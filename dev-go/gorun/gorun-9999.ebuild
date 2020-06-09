# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

GOLANG_PKG_IMPORTPATH="github.com/erning"
GOLANG_PKG_NAME="gorun"
GOLANG_PKG_ARCHIVEPREFIX="v"
GOLANG_PKG_HAVE_TEST=0

DESCRIPTION="gorun allows you to  put #! in the source code of a Go program to run it"
HOMEPAGE="https://github.com/erning/gorun"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/go"
RDEPEND="${DEPEND}"
