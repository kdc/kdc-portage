# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit golang-vcs golang-build

DESCRIPTION="gorun allows you to  put #! in the source code of a Go program to run it"
HOMEPAGE="https://github.com/erning/gorun"
EGO_PN=github.com/erning/gorun

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/go"
RDEPEND="${DEPEND}"

src_compile() {
	pushd src/${EGO_PN} || die
	go build -o build/gorun || die
	popd
}

src_install() {
	pushd src/${EGO_PN} || die
	dobin build/gorun
	popd || die
}
