# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit golang-vcs

DESCRIPTION="gorun allows you to  put #! in the source code of a Go program to run it"
HOMEPAGE="https://github.com/erning/gorun"
EGO_PN=github.com/erning/gorun

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/go"
RDEPEND="${DEPEND}"

src_prepare() {
	default
}

src_install() {
	dobin ${PN}
}
