# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{6,7,8} )

inherit distutils-r1

DESCRIPTION="The official python SDK for Linode API v4"
HOMEPAGE="https://github.com/linode/linode_api4-python"
SRC_URI="https://github.com/linode/${PN}-python/archive/${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/future
	dev-python/requests
	virtual/python-enum34
"

S="${WORKDIR}/${PN}-python-${PV}"

src_prepare() {
	default
	rm -rf test || die
}
