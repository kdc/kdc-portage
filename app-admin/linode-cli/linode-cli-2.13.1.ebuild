# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{6,7,8} )

inherit distutils-r1

DESCRIPTION="CLI for the Linode API v4"
HOMEPAGE="https://www.linode.com/docs/platform/linode-cli/
https://github.com/linode/linode-cli/releases"
SRC_URI="https://github.com/linode/${PN}-python/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="4"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-python/colorclass
	dev-python/pyyaml
	dev-python/requests
	dev-python/terminaltables
	virtual/python-enum34
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}-${PV}"
