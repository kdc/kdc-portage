# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_8 )

inherit distutils-r1

DESCRIPTION="Python wrapper for the Cloudflare Client API v4"
HOMEPAGE="https://github.com/cloudflare/python-cloudflare
https://pypi.org/project/cloudflare/"
SRC_URI="https://github.com/cloudflare/python-cloudflare/archive/${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/future
	dev-python/requests
	dev-python/pyyaml
	dev-python/jsonlines
"

S="${WORKDIR}/${PN}-python-${PV}"

src_prepare() {
	default
	rm -rf test || die
}
