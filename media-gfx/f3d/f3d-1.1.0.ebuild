# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1

DESCRIPTION="A fast and minimalist 3D viewer"
HOMEPAGE="https://gitlab.kitware.com/f3d/f3d/
https://github.com/Kitware/F3D"
SRC_URI="https://gitlab.kitware.com/f3d/f3d/uploads/937b2b6c8a14b40538983195395b4094/f3d-${PV}-Linux.tar.xz"

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
