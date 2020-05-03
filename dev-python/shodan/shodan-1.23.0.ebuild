# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_8 pypy pypy3 )
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
	dev-python/requests
	dev-python/click
	dev-python/click-plugins
	dev-python/colorama
	dev-python/requests
	dev-python/xlsxwriter
"
DEPEND="${REDEPEND}
	dev-python/setuptools
	test? (
	dev-python/nose
	dev-python/pytest
)"

python_test() {
	nosetests --verbose || die
	py.test -v -v || die
}
