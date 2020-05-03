# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{6..8} )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="Simplify working with jsonlines and ndjson data"
HOMEPAGE="https://pypi.org/project/jsonlines
https://github.com/wbolster/jsonlines/releases"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-python/six[${PYTHON_USEDEP}]
"
