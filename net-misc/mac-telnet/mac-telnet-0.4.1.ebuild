# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils multilib toolchain-funcs


DESCRIPTION="MAC Telnettool to search for Mikrotik via MACADDRESS"
HOMEPAGE="https://github.com/haakonnessjoen/MAC-Telnet"
SRC_URI="https://ftp.iteas.at/public/MAC-Telnet/MAC-Telnet-0.4.1.tar.gz"
LICENSE="BSD GPL-2"
SLOT="0"
IUSE=""
KEYWORDS=""
DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/MAC-Telnet"
QA_PREBUILT="opt/MAC-Telnet/mndp opt/MAC-Telnet/helper"


src_unpack() {
    unpack ${A}
    cd "${S}"
}

src_install() {
	exeinto opt/MAC-Telnet
	doexe mndp
	doexe mactelnet
	doexe macping
	doexe mactelnetd
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

