# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils versionator

MY_PV=$(replace_version_separator 3 '.v')
MY_PN="${PN}"
MY_PKGM=13

DESCRIPTION=""
HOMEPAGE="http://directory.apache.org/studio/"
SRC_URI="amd64? (
		"https://www.apache.org/dist/directory/studio/${MY_PV}-M${MY_PKGM}/${MY_PN}-${MY_PV}-M${MY_PKGM}-linux.gtk.x86_64.tar.gz"
	)
	x86? (
		"https://www.apache.org/dist/directory/studio/${MY_PV}-M${MY_PKGM}/${MY_PN}-${MY_PV}-M${MY_PKGM}-linux.gtk.x86.tar.gz"
	)"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=virtual/jdk-1.8.0
		x11-libs/gtk+:2"
RDEPEND="${DEPEND}"

INSTALL_DIR="/opt"
S="${WORKDIR}/${MY_PN}-linux-${MY_ARCH}-${MY_PV}"

src_install() {

	insinto "${INSTALL_DIR}"

	newicon "${MY_PN}/features/org.apache.directory.studio.schemaeditor.feature_${MY_PV}-M${MY_PKGM}/studio.png" "${MY_PN}.png"
	#newicon "${MY_PN}/icon.xpm" "${MY_PN}.xpm"

	make_desktop_entry "${MY_PN}" "Apache Directory Studio" "${MY_PN}" "System"

	doins -r *

	fperms +x "${INSTALL_DIR}/${MY_PN}/${MY_PN}"

	dosym "${INSTALL_DIR}/${MY_PN}/${MY_PN}" "/usr/bin/${MY_PN}"
}
