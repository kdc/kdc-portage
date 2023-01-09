# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="The world’s most-loved password manager"

HOMEPAGE="
https://1password.com/
https://releases.1password.com/linux/
https://aur.archlinux.org/packages/1password/"
SRC_URI="amd64? ( https://downloads.1password.com/linux/rpm/stable/x86_64/${P}.x86_64.rpm -> ${P}.x86_64.rpm )"

LICENSE="1password"
SLOT="0"
KEYWORDS="~amd64"
IUSE="policykit cli"
RESTRICT="mirror strip test bindist"

DEPEND="
x11-misc/xdg-utils
policykit? ( sys-auth/polkit )
cli? ( app-misc/1password-cli )
"
RDEPEND="${DEPEND}"

S=${WORKDIR}

src_prepare() {
	default
	xdg_environment_reset
}

src_unpack() {
	rpm_unpack ${P}.x86_64.rpm
}

src_install() {
	cp -ar "${S}/opt"  "${D}" || die "Install failed!"
	cp -ar "${S}/usr"  "${D}" || die "Install failed!"

	dosym /opt/1Password/1password /usr/bin/1password
}

pkg_postinst() {
	chmod 4755 /opt/1Password/chrome-sandbox
	chmod 6755 /opt/1Password/1Password-KeyringHelper
	chmod 2755 /opt/1Password/1Password-BrowserSupport

	xdg_icon_cache_update
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
}

pkg_postrm() {
	xdg_icon_cache_update
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
}
