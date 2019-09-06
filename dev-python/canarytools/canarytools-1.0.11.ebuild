# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 pypy pypy3 )
inherit distutils-r1

DESCRIPTION="The Python Canary API Wrapper allows access to the Canary Web API"
HOMEPAGE="
https://pypi.org/project/canarytools
https://canarytools.readthedocs.io/en/latest
"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-python/pytz[${PYTHON_USEDEP}]"
DEPEND="${REDEPEND}
dev-python/setuptools[${PYTHON_USEDEP}]
test? (
dev-python/nose[${PYTHON_USEDEP}]
dev-python/pytest[${PYTHON_USEDEP}]
)"

python_test() {
	nosetests --verbose || die
	py.test -v -v || die
}
