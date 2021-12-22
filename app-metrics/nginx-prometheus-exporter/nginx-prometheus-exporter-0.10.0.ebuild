# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

EGO_SUM=(
	)
go-module_set_globals

DESCRIPTION="NGINX Prometheus Exporter"
HOMEPAGE="https://github.com/nginxinc/nginx-prometheus-exporter"

EGO_PN="github.com/nginxinc/${PN}"
SRC_URI="https://github.com/nginxinc/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+="${EGO_SUM_SRC_URI}"
RESTRICT="primaryuri"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="test"

src_compile() {
	go build -mod vendor -work -o "${PN}" ./ || die
}

src_install() {
	emake DESTDIR="${D}" "${PN}"
	dodoc CHANGELOG.md README.md
}

src_install() {
	dobin "${PN}"
	newconfd ${FILESDIR}/${PN}.confd ${PN}
	newinitd ${FILESDIR}/${PN}.initd ${PN}
}
