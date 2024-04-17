# Maintainer: Matthew Phillip Cooper <coopertronics@gmail.com>
# Ex-Maintainer: Marcin Nowak <marcin.j.nowak+aur AT gmail DOT com>

pkgname=fractalus
pkgver=1.1.0
pkgrel=1
pkgdesc='A fan remake of Rescue on Fractalus, a classic game developed by Lucasfilm Games originally released on Atari, Commodore 64 and other platforms in 1984.'
url=https://www.lsdwa.com/projects/fractalus/
gmpkgurl="https://coopertronic-ws.ddns.net/ctos-assets/"
makedepends=('unzip')
depends=('bash' 'zlib' 'lrzip' 'xorriso' 'ctos-functions')
source=("http://downloads.lsdwa.com/projects/fractalus/fractalus-$pkgver-linux.tgz"
    "$gmpkgurl$pkgname/$pkgname.sh"
    "$gmpkgurl$pkgname/org.$pkgname.$pkgname.svg"
    "org.$pkgname.$pkgname.desktop"
    "fractalus")
arch=('x86_64')
sha512sums=('92da92ca15739c26263786b225436f18576645a42cec5a95feb902a73697b62322f443c3f35c5a3a48493587294a11254c12a3a89e3354fe9ada810817c1e73d'
    '2b6ed647553bc49888b5ad87e37e461b6cdae71c5b43ee396b52d41466a9c77d'
    '0cd092338bff018f91ebaea19cf032ede20f3c03971b713dfbe1470243d4f668')
license=("GPL3")

prepare() {
    mkdir "$srcdir"/Fractalus-Game
    cd "$srcdir"/Fractalus-Game
    bsdtar -xf "$srcdir"/fractalus-1.1.0-linux.tgz
}

package() {
    cd "$srcdir"/Fractalus-Game
    install -dm755 "$pkgdir"/opt
    install -dm755 "$pkgdir"/usr/bin
    mkdir -p "$pkgdir"/opt/$pkgname
    mkdir -p "$pkgdir"/usr/bin
    cp -R * "$pkgdir"/opt/$pkgname
    chmod 775 "$pkgdir"/opt/$pkgname
    chown :games "$pkgdir"/opt/$pkgname
    install -Dm644 "$srcdir/$pkgname.desktop" "$pkgdir/usr/share/applications/$pkgname.desktop"
    install -Dm755 "$srcdir/$pkgname" "$pkgdir/usr/bin/"
    msg2 "\e[1;32mYou'll have to be in the 'games' group to be able to play this game."
}
