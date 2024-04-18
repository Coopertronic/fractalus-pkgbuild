# Maintainer: Matthew Phillip Cooper <coopertronics@gmail.com>
# Ex-Maintainer: Marcin Nowak <marcin.j.nowak+aur AT gmail DOT com>

pkgname=fractalus
pkgver=1.1.0
pkgrel=2
pkgdesc='A fan remake of Rescue on Fractalus, a classic game developed by Lucasfilm Games originally released on Atari, Commodore 64 and other platforms in 1984.'
url=https://www.lsdwa.com/projects/fractalus/
gmpkgurl="https://coopertronic-ws.ddns.net/ctos-assets/"
makedepends=('unzip')
depends=('bash' 'zlib' 'lrzip' 'xorriso' 'ctos-functions')
source=("$gmpkgurl$pkgname/$pkgname-v$pkgver.zip"
    "$gmpkgurl$pkgname/$pkgname.sh"
    "$gmpkgurl$pkgname/org.$pkgname.$pkgname.svg"
    "$gmpkgurl$pkgname/org.$pkgname.$pkgname.desktop")
arch=('x86_64')
sha512sums=('92da92ca15739c26263786b225436f18576645a42cec5a95feb902a73697b62322f443c3f35c5a3a48493587294a11254c12a3a89e3354fe9ada810817c1e73d'
    'fa09e546ca7ecb2aa6d6c19f8a29ea2012b5f3fa591d59d217fbf08291cefd67cec5515d9dde4c96e568581cf43957d7176659ed72ed572672896b9ea0275738'
    'cd54e39c154118f50386e1048763b6d76e86a4b9e9d131c6219f04463bd5e932d2a3e605a2fd40b9377db38aa4b33c95c5bb85fa00d02b9b803533b13e36363f'
    '3f596435bd2ad9ae12f1fe789d61ad8b8f66c6bd73ef85d2b25fc0955126c2e867f3d60deffea5a6898ba65e2575241a7b421091d5c36e578e4ed002b7180165')
license=("GPL3")
install=${pkgname}.install.sh

#prepare() {
#    mkdir "$srcdir"/Fractalus-Game
#    cd "$srcdir"/Fractalus-Game
#    bsdtar -xf "$srcdir"/fractalus-1.1.0-linux.tgz
#}

package() {
    install -d $pkgdir/usr/share/$pkgname
    install -D -m644 $srcdir/$pkgname-v$pkgver/* $pkgdir/usr/share/$pkgname/
    install -D -m755 $pkgname.sh $pkgdir/usr/bin/$pkgname

    ##  Install game icon
    install -d $pkgdir/usr/share/icons/hicolor/scalable/apps
    install -D -m644 org.$pkgname.$pkgname.svg $pkgdir/usr/share/icons/hicolor/scalable/apps/org.$pkgname.$pkgname.svg

    ##  Install Application desktop launcher
    install -d $pkgdir/usr/share/applications
    install -D -m644 org.$pkgname.$pkgname.desktop $pkgdir/usr/share/applications/org.$pkgname.$pkgname.desktop
    
    #cd "$srcdir"/Fractalus-Game
    #install -dm755 "$pkgdir"/opt
    #install -dm755 "$pkgdir"/usr/bin
    #mkdir -p "$pkgdir"/opt/$pkgname
    #mkdir -p "$pkgdir"/usr/bin
    #cp -R * "$pkgdir"/opt/$pkgname
    #chmod 775 "$pkgdir"/opt/$pkgname
    #chown :games "$pkgdir"/opt/$pkgname
    #install -Dm644 "$srcdir/$pkgname.desktop" "$pkgdir/usr/share/applications/$pkgname.desktop"
    #install -Dm755 "$srcdir/$pkgname" "$pkgdir/usr/bin/"
    #msg2 "\e[1;32mYou'll have to be in the 'games' group to be able to play this game."
}
