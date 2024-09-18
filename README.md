# Anthropic Knowledge Utility (aku.sh)

aku.sh is a utility script for uploading documents to Claude AI projects via the (undocumented) Anthropic API.

(note: If requested by Anthropic, this project will be immediately removed from GitHub)

## Prerequisites

- Bash shell
- `curl` command-line tool
- `jq` for JSON parsing

## Configuration
Extract a session key from the Anthropic dashboard. You can locate this inside the cookie header of certain API calls, use your browser's developer tools to inspect the requests, or use the `curl` command to make a request to the API.

Extract a project id from the URL of the project you're working with. The URL is structured as follows: `https://claude.ai/project/<project-id>`.

Extract an organization id from the API requests of the project you're working with. You may upload a document to a project to create a new API request with an org id in the URL.

Create a `.akuconf` file in the script's directory or specify a custom config file with the `-c` option. The config should be in JSON format:

```json
{
  "ORG_ID": "your-organization-id",
  "PROJECTS": {
    "ProjectName1": "project-uuid-1",
    {OPTIONAL: MORE PROJECTS}
  },
  "SESSION_KEY": "your-session-key"
}
```

## Usage

```chmod +x aku.sh```

```
./aku.sh [-c|--config <config_file>] -f|--file <data_file> -p|--project <project_name> [-r|--replace]
```

- `-c|--config`: Optional. Path to the config file (default: `.akuconf` in the current directory)
- `-f|--file`: Required. Path to the file you want to upload
- `-p|--project`: Required. Name of the project (as defined in the config file)
- `-r|--replace`: Optional. Replace existing file with the same name

Example:
```
./aku.sh -f /path/to/document.md -p ProjectName1 -r
```

## History File (.akuhist)

The script now uses a `.akuhist` file to keep track of uploaded and deleted files. This file is automatically created and maintained in the same directory as the script. It stores information about each file operation, including:

- File name
- UUID
- Action (upload or delete)
- Timestamp

The `.akuhist` file is used for the replace functionality (`-r` flag), allowing the script to find and delete the most recently uploaded version of a file with the same name before uploading a new version.

## Why?

I use this tool in many projects, keeping my akuconf file in the root directory, I invoke ai-digest [https://github.com/khromov/ai-digest] to generate a text file representing the condensed codebase, and then I use this script to upload the file to Claude. This quickly updates my Claude context with the latest version of the source code.

## Notes

- Keep your session key in the config file up-to-date.
- The script uses the file's basename as the `file_name` in the API request.
- Ensure your Anthropic API access and permissions are correctly set up.
- The `.akuhist` file is crucial for the replace functionality. Do not delete or modify this file manually.

For more detailed information about Claude AI and its API, refer to the official Anthropic documentation.

## TODO
- Look into API document enumeration for more robust UUID fetching and file replacement (Get document UUIDs from the API instead of the history file)