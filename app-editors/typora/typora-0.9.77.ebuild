# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils xdg-utils unpacker

DESCRIPTION="markdown editor"
HOMEPAGE="
https://typora.io
https://typora.io/#linux
https://typora.io/windows/dev_release.html
https://support.typora.io/"
SRC_URI="https://typora.io/linux/${PN}_${PV}_amd64.deb"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-text/pandoc-bin"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_install() {
	insinto /
	doins -r usr

	fperms 0755 /usr/share/typora/Typora

	dodir /usr/share/applications
	insinto /usr/share/applications
	doins ${S}/usr/share/applications/typora.desktop

	dodir /usr/share/icons
	insinto /usr/share/icons
	doins -r ${S}/usr/share/icons/hicolor

	dosym ../share/typora/Typora /usr/bin/typora
}

pkg_postinst() {
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
}

pkg_postrm() {
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
}
