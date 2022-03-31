# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1

DESCRIPTION="A fast and minimalist 3D viewer"
HOMEPAGE="https://github.com/f3d-app/f3d"
SRC_URI="https://github.com/f3d-app/f3d/releases/download/v${PV}/f3d-${PV}-Linux.tar.xz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/f3d-${PV}-Linux"

src_install() {
	dobin $S/bin/f3d
	dodoc $S/share/doc/f3d/README.md
	newbashcomp share/bash-completion/completions/f3d f3d
}
