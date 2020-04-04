# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

EGO_VENDOR=(
"github.com/adammck/venv 8a9c907a37d36a8f34fa1c5b81aaf80c2554a306"
"github.com/blang/vfs 2c3e2278e174a74f31ff8bf6f47b43ecb358a870")

inherit golang-build golang-vcs-snapshot

DESCRIPTION="Terraform State → Ansible Dynamic Inventory"
HOMEPAGE="https://github.com/adammck/terraform-inventory"
EGO_PN="github.com/adammck/${PN}"
ARCHIVE_URI="https://${EGO_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

SRC_URI="${ARCHIVE_URI}
	${EGO_VENDOR_URI}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/go
app-admin/terraform
app-admin/ansible"
RDEPEND="${DEPEND}"

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
	go build -v -o bin/${PN} || die
}

src_install() {
	dodoc src/${EGO_PN}/README.md
	dobin bin/${PN}
}
