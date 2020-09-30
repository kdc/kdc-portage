# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rpm xdg-utils

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

	insinto /usr/share
	doins -r usr/share

	domenu usr/share/applications/1password.desktop
	doicon usr/share/icons/hicolor/32x32/apps/1password.png
	doicon usr/share/icons/hicolor/64x64/apps/1password.png
	doicon usr/share/icons/hicolor/256x256/apps/1password.png
	doicon usr/share/icons/hicolor/512x512/apps/1password.png
}

pkg_postinst() {
	xdg_icon_cache_update
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
}

pkg_postrm() {
	xdg_icon_cache_update
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
}

