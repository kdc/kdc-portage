# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools toolchain-funcs

DESCRIPTION="A tool that provides a basic SQL-frontend to PCAP-files "
HOMEPAGE="https://www.dns-oarc.net/tools/packetq
https://github.com/DNS-OARC/PacketQ"
SRC_URI="https://github.com/DNS-OARC/PacketQ/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

RESTRICT="mirror"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="maxmind"

DEPEND="
	sys-libs/zlib
	maxmind? ( dev-libs/libmaxminddb )"
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}"

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	econf
}

src_compile() {
	emake
}

src_install() {
	dobin $S/src/${PN}
}
