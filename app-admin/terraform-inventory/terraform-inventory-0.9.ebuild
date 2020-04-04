# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Terraform State → Ansible Dynamic Inventory"
HOMEPAGE="https://github.com/adammck/terraform-inventory"
SRC_URI="https://github.com/adammck/terraform-inventory/releases/download/v${PV}/terraform-inventory_${PV}_linux_amd64.zip"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-admin/terraform
app-admin/ansible"
RDEPEND="${DEPEND}"
S="${WORKDIR}"

src_install() {
	dobin terraform-inventory
}
