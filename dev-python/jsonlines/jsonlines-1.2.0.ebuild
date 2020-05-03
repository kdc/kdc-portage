# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_8 )

inherit distutils-r1

DESCRIPTION="Simplify working with jsonlines and ndjson data"
HOMEPAGE="https://pypi.org/project/jsonlines
https://github.com/wbolster/jsonlines/releases"
SRC_URI="https://github.com/wbolster/jsonlines/archive/${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-python/six
"

S="${WORKDIR}/${PN}-${PV}"

src_prepare() {
	default
	rm -rf test || die
}
