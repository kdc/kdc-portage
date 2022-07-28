# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit go-module systemd

DESCRIPTION="Prometheus exporter for samba metrics"
HOMEPAGE="https://github.com/imker25/samba_exporter"
SRC_URI="https://github.com/imker25/samba_exporter/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="acct-group/samba_exporter
	acct-user/samba_exporter"
	RDEPEND="${DEPEND}"

src_compile() {
	ego build
}

src_install() {
	dobin samba_exporter
	dodoc README.md
	newinitd "${FILESDIR}"/samba_exporter.initd samba_exporter
	newconfd "${FILESDIR}"/samba_exporter.confd samba_exporter

	systemd_dounit "${FILESDIR}"/samba_exporter.service
	insinto /etc/sysconfig
	newins "${FILESDIR}/sysconfig.samba_exporter" samba_exporter

	keepdir /var/log/samba_exporter
	fowners -R ${PN}:${PN} /var/log/samba_exporter
}
