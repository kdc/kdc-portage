# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7

inherit eutils multilib toolchain-funcs


DESCRIPTION="MAC Telnettool to search for Mikrotik via MACADDRESS"
HOMEPAGE="https://github.com/haakonnessjoen/MAC-Telnet"
SRC_URI="https://github.com/haakonnessjoen/MAC-Telnet/archive/v${PV}.tar.gz"
LICENSE="BSD GPL-2"
SLOT="0"
IUSE=""
KEYWORDS="~amd64"
DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/MAC-Telnet-${PV}"
QA_PREBUILT="opt/MAC-Telnet/mndp opt/MAC-Telnet/helper"


src_unpack() {
	unpack ${A}
	cd "${S}"
}

src_prepare() {
	default
	./autogen.sh || die
}

src_install() {
	exeinto opt/MAC-Telnet
	doexe src/mndp
	doexe src/mactelnet
	doexe src/macping
	doexe src/mactelnetd
	dosym /opt/MAC-Telnet/mndp /opt/bin/mndp
	dosym /opt/MAC-Telnet/mactelnet /opt/bin/mactelnet
	dosym /opt/MAC-Telnet/macping /opt/bin/macping
	dosym /opt/MAC-Telnet/mactelnetd /opt/bin/mactelnetd
	cp -r helper ${D}/opt/MAC-Telnet/helper
	cp -r config ${D}/opt/MAC-Telnet/config
	cp -r docs ${D}/opt/MAC-Telnet/docs
}

pkg_postinst() {
	ewarn "MAC-Telnet is OpenSource GPL."
	einfo "Installed in /opt/MAC-Telnet"
	ewarn "Binarys are mndp, mactelnet, macping, mactelnetd"
}
