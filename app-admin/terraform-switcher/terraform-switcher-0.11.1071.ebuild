# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A command line tool to switch between different versions of terraform"
HOMEPAGE="https://github.com/warrensbox/terraform-switcher
https://tfswitch.warrensbox.com/"
SRC_URI="https://github.com/warrensbox/${PN}/releases/download/${PV}/${PN}_${PV}_linux_amd64.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}"

src_install() {
	newbin tfswitch
	dodoc README.md
}
