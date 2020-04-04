# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

GOLANG_PKG_HAVE_TEST=1

DESCRIPTION="Terraform State → Ansible Dynamic Inventory"
HOMEPAGE="https://github.com/adammck/terraform-inventory"
SRC_URI="https://github.com/adammck/terraform-inventory/archive/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-admin/terraform
app-admin/ansible"
RDEPEND="${DEPEND}"
S="${WORKDIR}"

GOLANG_PKG_DEPENDENCIES=(
	"github.com/adammck/venv"
	"github.com/blang/vfs"
	"github.com/stretchr/testify"
)

inherit golang-build
