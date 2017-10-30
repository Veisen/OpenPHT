################################################################################
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="breakpad"
PKG_VERSION="0291f06"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="https://chromium.googlesource.com/breakpad/breakpad/"
PKG_URL="$DISTRO_SRC/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_HOST="toolchain"
PKG_DEPENDS_TARGET="toolchain breakpad:host"
PKG_PRIORITY="optional"
PKG_SECTION="devel"
PKG_SHORTDESC="Breakpad is a set of client and server components which implement a crash-reporting system."
PKG_LONGDESC="Breakpad is a set of client and server components which implement a crash-reporting system."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_HOST="--enable-selftest"
PKG_CONFIGURE_OPTS_TARGET="--disable-processor --disable-tools"

post_makeinstall_target() {
  rm -rf $INSTALL/usr/bin
}
