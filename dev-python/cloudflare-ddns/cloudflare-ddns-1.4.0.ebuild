# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{9..10} )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="DDNS script to sync public IP address to CloudFlare dns records"
HOMEPAGE="https://github.com/ailionx/cloudflare-ddns
https://pypi.org/project/cloudflare-ddns"
SRC_URI="https://github.com/ailionx/cloudflare-ddns/archive/${PV}.tar.gz"

RESTRICT="mirror strip"

SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="dev-python/requests[${PYTHON_USEDEP}]"

python_prepare_all() {
	distutils-r1_python_prepare_all
}
