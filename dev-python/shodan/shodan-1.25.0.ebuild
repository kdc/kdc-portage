# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{9..10} )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="Python library and command-line utility for Shodan (https://developer.shodan.io)"
HOMEPAGE="
https://developer.shodan.io
https://pypi.org/project/shodan
https://github.com/achillean/shodan-python/releases
"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/click[${PYTHON_USEDEP}]
	dev-python/click-plugins[${PYTHON_USEDEP}]
	dev-python/colorama[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/xlsxwriter[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
	dev-python/nose[${PYTHON_USEDEP}]
	dev-python/pytest[${PYTHON_USEDEP}]
)"

python_test() {
	nosetests --verbose || die
	py.test -v -v || die
}
