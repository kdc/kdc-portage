# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6..8} )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="Recent is a more structured way to log your bash history."
HOMEPAGE="
https://github.com/dotslash/recent2
"
SRC_URI="https://files.pythonhosted.org/packages/py3/r/${PN}/${P}-py3-none-any.whl -> ${P}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-python/pathlib2[${PYTHON_USEDEP}]
	dev-python/tabulate[${PYTHON_USEDEP}]
	test? (
	dev-python/nose[${PYTHON_USEDEP}]
	dev-python/pytest[${PYTHON_USEDEP}]
)"

python_test() {
	nosetests --verbose || die
	py.test -v -v || die
}
