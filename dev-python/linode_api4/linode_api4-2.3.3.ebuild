# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{6..8} )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="The official python SDK for Linode API v4"
HOMEPAGE="https://github.com/linode/linode_api4-python"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"


SLOT="0"
LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/future[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	virtual/python-enum34[${PYTHON_USEDEP}]
"
