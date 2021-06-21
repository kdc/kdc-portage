# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rpm

MY_PV="8.1.0-45"

DESCRIPTION="1Password command-line tool"
HOMEPAGE="
https://1password.com/
https://releases.1password.com/linux/
https://aur.archlinux.org/packages/1password/"
SRC_URI="https://downloads.1password.com/linux/rpm/stable/x86_64/1password-latest.rpm"

LICENSE="1password"
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
