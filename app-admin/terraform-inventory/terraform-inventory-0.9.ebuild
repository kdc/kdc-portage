# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

GOLANG_PKG_HAVE_TEST=1

DESCRIPTION="Terraform State → Ansible Dynamic Inventory"
HOMEPAGE="https://github.com/adammck/terraform-inventory"
SRC_URI="https://github.com/adammck/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

GOLANG_PKG_DEPENDENCIES=(
	"github.com/adammck/venv"
	"github.com/blang/vfs:2c3e227"
)

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/go
app-admin/terraform
app-admin/ansible"
RDEPEND="${DEPEND}"

src_unpack() {
	default
	golang-single_src_unpack
}

src_prepare() {
	golang-single_src_prepare
}
