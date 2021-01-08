# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils xdg-utils unpacker

DESCRIPTION="ToDo List / Time Tracker / Personal Jira Task Manager"
HOMEPAGE="https://github.com/johannesjo/super-productivity"
SRC_URI="https://github.com/johannesjo/super-productivity/releases/download/v${PV}/superProductivity_${PV}_amd64.deb -> ${P}.deb"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="mirror strip"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_install() {
	insinto /opt/${PN}
	doins -r ${S}/opt/superProductivity
	doins ${S}/usr/share/doc/${PN}/changelog.gz
	dosym /opt/superProductivity/${PN} /usr/bin/${PN}
	fperms 0755 /opt/superProductivity/${PN}
}
