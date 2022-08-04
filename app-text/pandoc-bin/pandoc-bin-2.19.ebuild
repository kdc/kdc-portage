# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Conversion between markup formats"
HOMEPAGE="http://pandoc.org https://github.com/jgm/pandoc/releases/"
SRC_URI="https://github.com/jgm/pandoc/releases/download/${PV}/pandoc-${PV}-linux-amd64.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}
		!app-text/pandoc"

RESTRICT="strip"

MY_PN="${PN/-bin}"
S="${WORKDIR}/${MY_PN}-${PV}"

src_install() {
	dobin bin/pandoc
	unpack share/man/man1/pandoc.1.gz
	doman pandoc.1
}
