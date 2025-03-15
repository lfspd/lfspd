
PKG="fontconfig"
PKG_VERSION="2.14"
PKG_BUILD="2"
PKG_FULL=${PKG}-${PKG_VERSION}.${PKG_BUIPKG_FILE="
${PKG_FULL}.tar.xz"
URL="https://www.freedesktop.org/softwar
MD5="95261910ea727b5dd116b06fbfd84b1f"

./configure --prefix=/usr/local  \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-docs

make
make install

