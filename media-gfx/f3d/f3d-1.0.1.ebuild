# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A fast and minimalist 3D viewer"
HOMEPAGE="https://gitlab.kitware.com/f3d/f3d/
https://github.com/Kitware/F3D"
SRC_URI="https://github.com/Kitware/F3D/archive/v${PV}.tar.gz"

LICENSE=""
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
