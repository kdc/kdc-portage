# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{9..10} )

inherit python-r1

MY_PN="omemo"

DESCRIPTION="Gajim plugin for OMEMO XMPP end-to-end encryption"
HOMEPAGE="https://dev.gajim.org/gajim/gajim-plugins/-/wikis/OmemoGajimPlugin"
SRC_URI="https://ftp.gajim.org/plugins_releases/${MY_PN}_${PV}.zip"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="mirror"

RDEPEND="${PYTHON_DEPS}
net-im/gajim
dev-python/python-axolotl[${PYTHON_USEDEP}]
dev-python/qrcode[${PYTHON_USEDEP}]
dev-python/cryptography[${PYTHON_USEDEP}]"

S="${WORKDIR}"

src_install() {
	python_moduleinto "gajim/data/plugins"
	python_foreach_impl python_domodule ${MY_PN}
}
