# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit systemd

DESCRIPTION="uStreamer - Lightweight and fast MJPEG-HTTP streamer"
HOMEPAGE="https://github.com/pikvm/ustreamer https://github.com/pikvm/ustreamer/blob/master/pkg/gentoo/ustreamer-9999.ebuild"
SRC_URI="https://github.com/pikvm/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	acct-group/ustreamer
	acct-user/ustreamer
	>=dev-libs/libevent-2.1.8
	>=media-libs/libjpeg-turbo-1.5.3
	>=dev-libs/libbsd-0.9.1
"
RDEPEND="${DEPEND}"
BDEPEND=""

RESTRICT="primaryuri"

src_install() {
	dobin ustreamer
	dobin ustreamer-dump
	doman man/ustreamer.1
	doman man/ustreamer-dump.1

	newinitd "${FILESDIR}"/ustreamer.initd ustreamer
	newconfd "${FILESDIR}"/ustreamer.confd ustreamer

	systemd_dounit "${FILESDIR}"/ustreamer.service
	insinto /etc/sysconfig
	newins "${FILESDIR}/sysconfig.ustreamer" ustreamer

	keepdir /var/log/ustreamer
	fowners -R ${PN}:${PN} /var/log/ustreamer
}
