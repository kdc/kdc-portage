# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit vcs-snapshot toolchain-funcs eutils

DESCRIPTION="Analog clock in ncurses"
HOMEPAGE="https://github.com/xorg62/tty-clock"
SRC_URI="https://github.com/xorg62/tty-clock/archive/master.zip -> ${P}.zip"
S="${WORKDIR}/tty-clock-master"


LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="sys-libs/ncurses"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_prepare() {
	tc-export CC
}

src_install() {
	emake \
		DESTDIR="${D}" \
		INSTALLPATH="${D}/usr/bin" \
		install
	dodoc README
}
