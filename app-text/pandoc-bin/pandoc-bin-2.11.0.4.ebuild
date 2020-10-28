# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Conversion between markup formats"
HOMEPAGE="http://pandoc.org https://github.com/jgm/pandoc/releases/"
SRC_URI="https://github.com/jgm/pandoc/releases/download/${PV}/pandoc-${PV}-linux-amd64.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
		!app-text/pandoc"

RESTRICT="mirror strip"

MY_PN="${PN/-bin}"
S="${WORKDIR}/${MY_PN}-${PV}"

src_install() {
	dobin bin/pandoc
	doman share/man/man1/pandoc.1.gz
}
