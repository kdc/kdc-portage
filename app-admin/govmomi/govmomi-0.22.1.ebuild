# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Go library for the VMware vSphere API"
HOMEPAGE="https://github.com/vmware/govmomi"
SRC_URI="https://github.com/vmware/govmomi/releases/download/v${PV}/govc_linux_amd64.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}"

src_install() {
	newbin govc_linux_amd64 govc
}
