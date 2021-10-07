# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A tool to render markdown on the CLI"
HOMEPAGE="https://github.com/charmbracelet/glow
https://github.com/charmbracelet/glow/releases"
SRC_URI="https://github.com/charmbracelet/glow/archive/refs/tags/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
IUSE=""
RESTRICT="test network-sandbox"
KEYWORDS="~amd64"

DEPEND="dev-lang/go"
RDEPEND="${DEPEND}
	!dev-util/${PN}-bin"
S="${WORKDIR}"

src_compile() {
	go build -v -o "${PN}" .
}

src_install() {
	dobin "${PN}"
}
