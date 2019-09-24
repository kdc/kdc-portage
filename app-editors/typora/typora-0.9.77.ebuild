# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit unpacker

DESCRIPTION="markdown editor"
HOMEPAGE="
https://typora.io
https://typora.io/#linux
https://typora.io/windows/dev_release.html
https://support.typora.io/"
SRC_URI="https://typora.io/linux/${PN}_${PV}_amd64.deb"

RESTRICT="primaryuri mirror"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-text/pandoc-bin"
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	if [ "${A}" != "" ]; then
		unpack ${A}
	fi
	S=${WORKDIR}/Typora-linux-x64/
}

src_install() {
	insinto /opt/
	doins -r ${S} 
	dosym /opt/Typora-linux-x64/Typora /usr/bin/typora
	fperms 0755 /opt/Typora-linux-x64/Typora
}
