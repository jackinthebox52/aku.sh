# Maintainer: Jackson Massey <jackmassey2000@gmail.com>
pkgname=anthropic-knowledge-utility
pkgver=1.1.0
pkgrel=1
pkgdesc="A bash utility for uploading documents to Anthropic/Claude's 'Project Knowledge'"
arch=('any')
url="https://github.com/jackinthebox52/aku.sh"
license=('GPL3')
depends=('bash' 'curl' 'jq')
source=("$pkgname-$pkgver.tar.gz::$url/archive/v$pkgver.tar.gz")
sha256sums=('c613c507e7bd2797681605febb3869dfe43bf282c8fcd722c031e5dba6d48ba5')

package() {
    install -Dm755 "$srcdir/aku.sh" "$pkgdir/usr/bin/aku"
    install -Dm644 "$srcdir/README.md" "$pkgdir/usr/share/doc/$pkgname/README.md"
    install -Dm644 "$srcdir/LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}

