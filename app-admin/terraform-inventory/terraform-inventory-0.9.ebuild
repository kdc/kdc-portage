# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit golang-base golang-vcs-snapshot

DESCRIPTION="Terraform State → Ansible Dynamic Inventory"
HOMEPAGE="https://github.com/adammck/terraform-inventory"
EGO_PN="github.com/adammck/${PN}"
SRC_URI="https://${EGO_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/go
app-admin/terraform
app-admin/ansible"
RDEPEND="${DEPEND}"

RESTRICT="test"

src_prepare() {
	default
}

src_compile() {
	mkdir bin || die
	export GOBIN=${S}/bin GOPATH=${S}
	cd src/${EGO_PN} || die
	XC_ARCH=$(go env GOARCH) \
	XC_OS=$(go env GOOS) \
	XC_OSARCH=$(go env GOOS)/$(go env GOARCH) \
	GOCACHE="${T}/go-cache" go build -work -o "bin/${PN}" ./ || die
}

src_install() {
	dodoc src/${EGO_PN}/{README.md}
	dobin bin/${PN}
}
