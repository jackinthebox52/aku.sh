#!/bin/bash
# aku.sh - Upload a file to a Claude AI project via the Anthropic API
# 2024-09-18
# Author: Jackson Massey (https://github.com/jackinthebox52)
# License: GPL3

BOLD='\033[1m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

usage() {
    echo -e "${BOLD}Usage:${NC} $0 [OPTIONS] -f <data_file> -p <project_name>"
    echo
    echo -e "${BOLD}Options:${NC}"
    echo -e "  ${BLUE}-c, --config${NC} ${GREEN}<config_file>${NC}  Specify a config file (default: .akuconf in current directory)"
    echo -e "  ${BLUE}-f, --file${NC} ${GREEN}<data_file>${NC}      ${YELLOW}Specify the file to upload (required)${NC}"
    echo -e "  ${BLUE}-p, --project${NC} ${GREEN}<project_name>${NC} ${YELLOW}Specify the project name (required)${NC}"
    echo -e "  ${BLUE}-r, --replace${NC}               Replace existing file with the same name"
    echo -e "  ${BLUE}-h, --help${NC}                  Display this help message"
    echo
    echo -e "${BOLD}Note:${NC} If -c|--config is not specified, the script will look for .akuconf in the current directory."
    exit 1
}

update_history() {
    local file_name="$1"
    local uuid="$2"
    local action="$3"
    local timestamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
    local entry="{\"file_name\":\"$file_name\",\"uuid\":\"$uuid\",\"action\":\"$action\",\"timestamp\":\"$timestamp\"}"
    
    if [ ! -f .akuhist ]; then
        echo "[]" > .akuhist
    fi
    
    # Add new entry to the beginning of the array
    jq --argjson new_entry "$entry" '. = [$new_entry] + .' .akuhist > .akuhist.tmp && mv .akuhist.tmp .akuhist
}

get_latest_uuid() {
    local file_name="$1"
    jq -r --arg name "$file_name" '.[] | select(.file_name == $name and .action == "upload") | .uuid' .akuhist | head -n 1
}

delete_existing_file() {
    local org_id="$1"
    local project_uuid="$2"
    local file_name="$3"
    local session_key="$4"

    local file_uuid=$(get_latest_uuid "$file_name")

    if [ -n "$file_uuid" ]; then
        echo -e "${YELLOW}Deleting existing file: $file_name (UUID: $file_uuid)${NC}"
        response=$(curl -s "https://api.claude.ai/api/organizations/$org_id/projects/$project_uuid/docs/$file_uuid" \
            -X DELETE \
            -H "Cookie: sessionKey=$session_key")
        update_history "$file_name" "$file_uuid" "delete"
        echo -e "${GREEN}File deleted successfully.${NC}"
    else
        echo -e "${YELLOW}No existing file found with name: $file_name${NC}"
    fi
}

# Set default config file
config_file=".akuconf"
replace_flag=false

# Command line arguments
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -c|--config) config_file="$2"; shift ;;
        -f|--file) data_file="$2"; shift ;;
        -p|--project) project_name="$2"; shift ;;
        -r|--replace) replace_flag=true ;;
        -h|--help) usage ;;
        *) usage ;;
    esac
    shift
done

if [ -z "$data_file" ] || [ -z "$project_name" ]; then
    usage
fi

if [ ! -f "$config_file" ]; then
    echo -e "${BOLD}${YELLOW}Error:${NC} Config file not found: $config_file"
    exit 1
fi

if [ ! -f "$data_file" ]; then
    echo -e "${BOLD}${YELLOW}Error:${NC} Data file not found: $data_file"
    exit 1
fi

org_id=$(jq -r '.ORG_ID' "$config_file")
projects=$(jq -r '.PROJECTS' "$config_file")
session_key=$(jq -r '.SESSION_KEY' "$config_file")

# Extract project UUID
project_uuid=$(echo "$projects" | jq -r --arg name "$project_name" '.[$name]')

if [ -z "$project_uuid" ] || [ "$project_uuid" == "null" ]; then
    echo -e "${BOLD}${YELLOW}Error:${NC} Project not found: $project_name"
    exit 1
fi

url="https://api.claude.ai/api/organizations/$org_id/projects/$project_uuid/docs"

file_name=$(basename "$data_file")

if [ "$replace_flag" = true ]; then
    delete_existing_file "$org_id" "$project_uuid" "$file_name" "$session_key"
fi

file_content=$(cat "$data_file")
formatted_content=$(echo "$file_content" | sed 's/\\/\\\\/g' | sed 's/"/\\"/g' | sed ':a;N;$!ba;s/\n/\\n/g')

# Construct the data payload
data_payload="{\"file_name\":\"$file_name\",\"content\":\"$formatted_content\"}"

# Execute curl command
echo -e "${BLUE}Uploading file: $file_name${NC}"
response=$(curl -s "$url" \
    -X POST \
    -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:130.0) Gecko/20100101 Firefox/130.0' \
    -H 'Content-Type: application/json' \
    -H 'Referer: https://claude.ai/' \
    -H 'Origin: https://claude.ai' \
    -H "Cookie: sessionKey=$session_key" \
    --data-raw "$data_payload")

# Check if upload was successful and update history
if echo "$response" | jq -e '.uuid' > /dev/null 2>&1; then
    uuid=$(echo "$response" | jq -r '.uuid')
    update_history "$file_name" "$uuid" "upload"
    echo -e "${GREEN}File upload completed successfully. UUID: $uuid${NC}"
else
    echo -e "${BOLD}${YELLOW}Error:${NC} File upload failed. Response: $response"
fi