# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="markdown editor"
HOMEPAGE="
https://typora.io
https://typora.io/#linux
https://typora.io/dev_release.html"
SRC_URI="https://typora.io/linux/Typora-linux-x64.tar.gz"

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