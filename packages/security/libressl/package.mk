################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="libressl"
PKG_VERSION="2.4.4"
PKG_ARCH="any"
PKG_LICENSE="BSD"
PKG_SITE="http://www.libressl.org/"
PKG_URL="http://ftp.openbsd.org/pub/OpenBSD/LibreSSL/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_HOST="ccache:host"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="security"
PKG_SHORTDESC="libressl: a FREE version of the SSL/TLS protocol forked from OpenSSL"
PKG_LONGDESC="LibreSSL is a FREE version of the SSL/TLS protocol forked from OpenSSL"

PKG_IS_ADDON="no"
PKG_USE_CMAKE="no"
PKG_AUTORECONF="yes"

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib
  cp */.libs/*.so.?? $INSTALL/usr/lib/
}
