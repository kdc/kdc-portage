# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Conversion between markup formats"
HOMEPAGE="http://pandoc.org https://github.com/jgm/pandoc/releases/"
SRC_URI="https://github.com/jgm/pandoc/releases/download/${PV}/pandoc-${PV}-linux.tar.gz"

LICENSE="GPLv2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
		!app-text/pandoc"

MY_PN="${PN/-bin}"
S="${WORKDIR}/${MY_PN}-${PV}"

src_install() {
	dobin bin/pandoc
	dobin bin/pandoc-citeproc
	doman share/man/man1/pandoc.1.gz
	doman share/man/man1/pandoc-citeproc.1.gz
}
