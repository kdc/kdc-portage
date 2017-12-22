# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="1Password command-line tool"
HOMEPAGE="https://1password.com/"
SRC_URI="https://cache.agilebits.com/dist/1P/op/pkg/v0.2/op_linux_amd64_v0.2.zip"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}"

src_install() {
    dobin op
}
