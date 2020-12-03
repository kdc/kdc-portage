# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..9} )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="The Python Canary API Wrapper allows access to the Canary Web API"
HOMEPAGE="
https://pypi.org/project/canarytools
https://canarytools.readthedocs.io/en/latest"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-python/pytz
	dev-python/setuptools
	test? (
		dev-python/nose
		dev-python/pytest
		)
"

python_test() {
	nosetests --verbose || die
	py.test -v -v || die
}
