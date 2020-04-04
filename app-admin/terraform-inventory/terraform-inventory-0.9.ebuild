# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit golang-vcs-snapshot go-module

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
	go build \
		-mod=vendor \
		-work -o "bin/${PN}" ./ || die
}

src_install() {
	dodoc src/${EGO_PN}/{README.md}
	dobin bin/${PN}
}
