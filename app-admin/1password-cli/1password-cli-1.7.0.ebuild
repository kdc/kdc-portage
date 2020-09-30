# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="1Password command-line tool"
HOMEPAGE="
https://1password.com/
https://app-updates.agilebits.com/product_history/CLI"
SRC_URI="https://cache.agilebits.com/dist/1P/op/pkg/v${PV}/op_linux_amd64_v${PV}.zip"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="mirror strip"

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}"

src_install() {
	dobin op
}
