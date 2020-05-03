# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7

inherit eutils

DESCRIPTION="Minishift helps you run a single-nod OpenShift Cluster within a VM"
HOMEPAGE="
https://github.com/minishift/minishift
https://github.com/minishift/minishift/releases"
SRC_URI="https://github.com/minishift/minishift/releases/download/v${PV}/${P}-linux-amd64.tgz"
LICENSE="Apache-2.0"
SLOT="0"
IUSE=""
KEYWORDS="~amd64"
DEPEND="app-emulation/docker-machine-kvm"
RDEPEND="${DEPEND}"
S="${WORKDIR}/${P}-linux-amd64"

src_install(){
	dobin minishift
}
