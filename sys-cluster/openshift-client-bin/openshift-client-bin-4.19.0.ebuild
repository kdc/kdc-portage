# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit bash-completion-r1

VTAG="scos.9"

DESCRIPTION="The Community Distribution of Kubernetes that powers Red Hat OpenShift"
HOMEPAGE="https://www.okd.io"
SRC_URI="https://github.com/okd-project/okd/releases/download/${PV}-okd-${VTAG}/openshift-client-linux-${PV}-okd-${VTAG}.tar.gz"
LICENSE="Apache-2.0"
SLOT="4"
KEYWORDS="amd64"
IUSE="kubectl"

DEPEND=""
RDEPEND="${DEPEND}"

RESTRICT="mirror strip test bindist"

S="${WORKDIR}"

src_install() {
	dobin oc
	use kubectl && dosym /usr/bin/oc /usr/bin/kubectl
	dodoc README.md
	newbashcomp "${FILESDIR}"/oc_bash_completion oc
}
