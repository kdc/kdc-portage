# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6..8} )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="CLI for the Linode API v4"
HOMEPAGE="https://www.linode.com/docs/platform/linode-cli/
https://github.com/linode/linode-cli/releases"
#SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
SRC_URI="https://github.com/linode/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="4"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/colorclass[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/terminaltables[${PYTHON_USEDEP}]
	virtual/python-enum34[${PYTHON_USEDEP}]
"
