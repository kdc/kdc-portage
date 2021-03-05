# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils

DESCRIPTION="Apache Directory Studio is an universal LDAP directory tool"
HOMEPAGE="https://directory.apache.org/studio
https://downloads.apache.org/directory/studio"
SRC_URI="https://downloads.apache.org/directory/studio//2.0.0.v20210213-M16/ApacheDirectoryStudio-2.0.0.v20210213-M16-linux.gtk.x86_64.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-java/maven-bin
		dev-java/openjdk-bin:11
		x11-libs/gtk+:3"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}"

src_install() {
	dodir /opt/${PN}
	cp -rT "${S}/" "${D}/opt/ApacheDirectoryStudio/" || die "install failed!"
	dosym "${D}/opt/ApacheDirectoryStudio/ApacheDirectoryStudio" usr/bin/${PN}
}
