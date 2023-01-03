# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit go-module systemd

DESCRIPTION="Prometheus Podman Exporter"
HOMEPAGE="https://github.com/containers/prometheus-podman-exporter"
SRC_URI="https://github.com/containers/prometheus-podman-exporter/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="acct-group/prometheus_podman_exporter
	acct-user/prometheus_podman_exporter"
	RDEPEND="${DEPEND}"

src_compile() {
	ego build
}

src_install() {
	dobin prometheus-podman-exporter
	dodoc README.md
	newinitd "${FILESDIR}"/prometheus-podman-exporter.initd prometheus_podman_exporter
	newconfd "${FILESDIR}"/prometheus-podman-exporter.confd prometheus_podman_exporter

	systemd_dounit "${FILESDIR}"/prometheus-podman-exporter.service
	insinto /etc/sysconfig
	newins "${FILESDIR}/sysconfig.prometheus-podman-exporter" prometheus_podman_exporter

	keepdir /var/log/prometheus_podman_exporter
	fowners -R ${PN}:${PN} /var/log/prometheus_podman_exporter
}
