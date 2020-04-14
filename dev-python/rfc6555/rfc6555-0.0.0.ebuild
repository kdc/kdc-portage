# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2_7 python3_{5,6,7})

inherit distutils-r1

DESCRIPTION="Python implementation of the Happy Eyeballs Algorithm described in RFC 6555"
HOMEPAGE="https://pypi.org/project/rfc6555/
	https://github.com/sethmlarson/rfc6555"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/selectors2[${PYTHON_USEDEP}]"
RDEPEND=""
