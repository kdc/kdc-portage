# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Network UPS Tools (NUT) Prometheus Exporter"
HOMEPAGE="https://github.com/DRuggeri/nut_exporter"
SRC_URI="https://github.com/DRuggeri/${PN}/releases/download/v${PV}/${PN}-v${PV}-linux-amd64"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="test"

src_install() {
	newbin "${PN}-v${PV}-linux-amd64" "nut_exporter"
	newconfd $FILESDIR/$PN.confd $PN
	newinitd $FILESDIR/$PN.initd $PN
}
