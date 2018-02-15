# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils versionator

MY_PV=$(replace_version_separator 3 '.v')
MY_PN="${PN}"
MY_PKGM=13

DESCRIPTION="Apache Directory Studio is an universal LDAP directory tool"
HOMEPAGE="https://directory.apache.org/studio"
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

S="${WORKDIR}/${MY_PN}"

src_install() {
    dodir /opt/${PN}
    cp -rT "${S}/" "${D}/opt/ApacheDirectoryStudio/" || die "install failed!"
    dosym "${D}/opt/ApacheDirectoryStudio/ApacheDirectoryStudio" usr/bin/${PN}
}
