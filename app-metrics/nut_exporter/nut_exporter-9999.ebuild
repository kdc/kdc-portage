# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit golang-vcs golang-build

DESCRIPTION="Network UPS Tools (NUT) Prometheus Exporter"
HOMEPAGE="https://github.com/DRuggeri/nut_exporter"

EGO_PN="github.com/DRuggeri/${PN}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="test"

src_compile() {
	pushd src/${EGO_PN} || die
	go build -o build/gorun || die
	popd
}

src_install() {
	pushd src/${EGO_PN} || die
	dobin build/nut_exporter
	popd || die
	newconfd $FILESDIR/$PN.confd $PN
	newinitd $FILESDIR/$PN.initd $PN
}
