# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools systemd

DESCRIPTION="Network sniffer that logs all DNS server replies"
HOMEPAGE="https://github.com/gamelinux/passivedns"
HOMEPAGE+=" https://github.com/gentoo-mirror/nest/tree/master/net-analyzer/passivedns"
SRC_URI="https://github.com/gamelinux/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug json ssl" #pfring

RDEPEND="acct-user/passivedns
	net-libs/ldns
	net-libs/libpcap
	json? ( dev-libs/jansson )
	ssl? ( dev-libs/openssl:0= )"
DEPEND="${RDEPEND}"

DOCS=( doc/AUTHORS doc/ChangeLog doc/How-it-works.txt doc/ISSUES )

src_prepare() {
	default

	# Respect CFLAGS
	sed -i "/\$(CC)/s/-O3/\$(CFLAGS)/" src/Makefile.am || die "sed failed"
	eautoreconf
}

src_configure() {
	econf \
		"$(use_enable debug)" \
		"$(use_enable json)"
		#$(use_enable pfring )
}

src_install() {
	default

	newinitd "${FILESDIR}"/passivedns.initd passivedns
	newconfd "${FILESDIR}"/passivedns.confd passivedns
	systemd_dounit "${FILESDIR}"/passivedns.service
}
