# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{6..8} )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="Pure-Python library to decode/read utmp and wtmp files"
HOMEPAGE="http://srcco.de/
https://pypi.org/project/utmp"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
dev-python/six[${PYTHON_USEDEP}]
dev-python/flake8[${PYTHON_USEDEP}]"

python_prepare_all() {
	sed -e "/setup_requires/ d" -i setup.py || die
	distutils-r1_python_prepare_all
}
