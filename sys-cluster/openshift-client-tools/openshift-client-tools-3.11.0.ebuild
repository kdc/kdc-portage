# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1

COMMIT="0cbc58b"

DESCRIPTION="Enterprise Kubernetes for Developers"
HOMEPAGE="https://www.openshift.org"
SRC_URI="https://github.com/openshift/origin/releases/download/v${PV}/openshift-origin-client-tools-v${PV}-${COMMIT}-linux-64bit.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE="cluster"

DEPEND="cluster? ( app-emulation/docker )"
RDEPEND="${DEPEND}"

RESTRICT="binchecks strip"

S="${WORKDIR}/openshift-origin-client-tools-v${PV}-${COMMIT}-linux-64bit"

src_install() {
	dobin oc
	dodoc README.md
	"$S"/oc completion bash > "$S"/oc.completion.bash
	newbashcomp oc.completion.bash oc
}
