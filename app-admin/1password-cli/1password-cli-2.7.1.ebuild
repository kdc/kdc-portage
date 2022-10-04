# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="The world’s most-loved password manager CLI"
HOMEPAGE="https://1password.com
https://app-updates.agilebits.com/product_history/CLI2
https://github.com/sspreitzer/gentoo-repo/blob/master/app-misc/1password-cli/"
SRC_URI="amd64? ( https://cache.agilebits.com/dist/1P/op2/pkg/v${PV}/op_linux_amd64_v${PV}.zip )"

LICENSE="1password"
SLOT="0"
KEYWORDS="amd64"

RESTRICT="mirror strip test bindist"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S=${WORKDIR}

src_install() {
	dobin op
}
