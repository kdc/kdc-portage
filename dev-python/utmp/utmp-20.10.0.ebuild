# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{9..10} )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="Pure-Python library to decode/read utmp and wtmp files"
HOMEPAGE="https://codeberg.org/hjacobs/utmp/releases
https://pypi.org/project/utmp"
SRC_URI="https://codeberg.org/hjacobs/utmp/archive/${PV}.tar.gz"

RESTRICT="mirror strip"

SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
dev-python/six[${PYTHON_USEDEP}]
dev-python/flake8[${PYTHON_USEDEP}]"

S="${WORKDIR}/${PN}"

python_prepare_all() {
	sed -e "/setup_requires/ d" -i setup.py || die
	distutils-r1_python_prepare_all
}
