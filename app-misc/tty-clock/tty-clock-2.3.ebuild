# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7

inherit vcs-snapshot

DESCRIPTION="Analog clock in ncurses"
HOMEPAGE="https://github.com/xorg62/tty-clock"
SRC_URI="https://github.com/xorg62/tty-clock/archive/v${PV}.tar.gz"
S="${WORKDIR}/v${PV}"


LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="sys-libs/ncurses"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_prepare() {
	default
}

src_install() {
	dobin tty-clock
	dodoc README
}
