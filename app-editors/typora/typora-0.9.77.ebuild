# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils xdg-utils unpacker

DESCRIPTION="markdown editor"
HOMEPAGE="
https://typora.io
https://typora.io/#linux
https://typora.io/windows/dev_release.html
https://support.typora.io/"
SRC_URI="https://typora.io/linux/${PN}_${PV}_amd64.deb"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-text/pandoc-bin"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_install() {
	insinto /opt/${MY_PN}
	doins -r ${S}/usr/share/typora
	dosym /opt/typora/Typora /usr/bin/typora
	fperms 0755 /opt/typora/Typora
}
