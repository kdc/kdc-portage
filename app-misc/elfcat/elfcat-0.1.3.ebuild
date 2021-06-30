# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

CRATES=""

DESCRIPTION="ELF visualizer. Generates HTML files from ELF binaries"
HOMEPAGE="https://crates.io/crates/elfcat
https://github.com/ruslashev/elfcat/releases"
SRC_URI="https://github.com/ruslashev/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
$(cargo_crate_uris ${CRATES})"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	cargo_src_compile
}

src_install() {
	cargo_src_install
}
