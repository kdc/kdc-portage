# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1

DESCRIPTION="Enterprise Kubernetes for Developers (Client Tools)"
HOMEPAGE="https://www.openshift.org
https://github.com/openshift/origin/releases"
SRC_URI="https://github.com/openshift/origin/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="kerberos"

DEPEND="dev-lang/go
	kerberos? ( app-crypt/mit-krb5 )"
RDEPEND="${DEPEND}"

S="${WORKDIR}/origin-${PV}"

src_compile() {
	use kerberos && MY_TAGS="-tags=gssapi"
	emake all OS_GIT_MINOR="" OS_GIT_MAJOR="" OS_GIT_VERSION="v${PV}" WHAT="cmd/oc ${MY_TAGS}"
}

src_install() {
	case "${ARCH}" in
		x86)	MY_ARCH="386" ;;
		*)		MY_ARCH="${ARCH}" ;;
	esac

	dobin "_output/local/bin/linux/${MY_ARCH}/oc"
	doman docs/man/man1/oc*
	dobashcomp contrib/completions/bash/oc
}
