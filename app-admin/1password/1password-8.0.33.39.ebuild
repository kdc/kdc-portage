# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rpm

MY_PV=$(ver_rs 3 '-')
MY_P="${PN}-${MY_PV}.BETA"

DESCRIPTION="1Password command-line tool"
HOMEPAGE="
https://1password.com/
https://releases.1password.com/linux/
https://aur.archlinux.org/packages/1password/"
SRC_URI="https://onepassword.s3.amazonaws.com/linux/rpm/${MY_P}.x86_64.rpm"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="mirror strip"

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}"

src_install() {
	insinto /opt
	doins -r opt/1Password
	fperms 0755 /opt/1Password/1password
	dosym /opt/1Password/1password /usr/bin/${PN}
}
