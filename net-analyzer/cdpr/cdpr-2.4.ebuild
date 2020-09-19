# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

DESCRIPTION="Cisco Discovery Protocol Reporter"
HOMEPAGE="https://cdpr.sourceforge.net/"
SRC_URI="https://sourceforge.net/projects/${PN}/files/${PN}/${PVR}/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sparc ~x86"
IUSE=""

DEPEND="net-libs/libpcap"

src_unpack() {
	unpack ${A}
	cd "${S}"
}

src_install() {
	dosbin cdpr
	dodoc COPYING INSTALL license.txt README README.cdprs
	cp -r "${S}/cdprs" "${D}/usr/share/doc/${PF}/"
	cp -r "${S}/cdpr.conf" "${D}/usr/share/doc/${PF}/cdpr.conf.sample"
}
