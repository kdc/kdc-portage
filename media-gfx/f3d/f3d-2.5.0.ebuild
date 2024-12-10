# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit bash-completion-r1

DESCRIPTION="A fast and minimalist 3D viewer"
HOMEPAGE="https://github.com/f3d-app/f3d"
SRC_URI+="https://github.com/f3d-app/f3d/releases/download/v${PV}/F3D-${PV}-Linux-x86_64.tar.gz -> ${P}.tar.gz"
SRC_URI="raytracing? ( https://github.com/f3d-app/f3d/releases/download/v${PV}/F3D-${PV}-Linux-x86_64-raytracing.tar.gz -> ${P}.tar.gz )"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="raytracing"

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}"

src_install() {
	dobin $S/bin/f3d
	dolib.so $S/lib/libf3d.so
	dodoc $S/share/doc/f3d/README.md
	unpack $S/share/man/man1/f3d.1.gz
	doman $S/f3d.1
	newbashcomp share/bash-completion/completions/f3d f3d
}
