# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="The simplest way to keep notes"
HOMEPAGE="https://simplenote.com https://github.com/Automattic/simplenote-electron"
SRC_URI="https://github.com/Automattic/simplenote-electron/releases/download/v${PV}/Simplenote-linux-${PV}.tar.gz"

LICENSE="GPLv2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
        insinto /opt/${MY_PN}
        doins -r usr/lib/${MY_PN}/.
        fperms +x /opt/${MY_PN}/${MY_PN}
        dosym /opt/${MY_PN}/${MY_PN} usr/bin/${MY_PN}
}
