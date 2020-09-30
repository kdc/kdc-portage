# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rpm

DESCRIPTION="1Password command-line tool"
HOMEPAGE="
https://1password.com/
https://support.1password.com/cs/getting-started-linux/"
SRC_URI="https://onepassword.s3.amazonaws.com/linux/rpm/${P}-1.rpm"

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

	insinto /usr/share
	doins -r usr/share/polkit-1
}
