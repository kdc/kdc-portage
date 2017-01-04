# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit eutils

DESCRIPTION="Genymotion is a fast and easy-to-use Android emulator to run and test your Android apps"
HOMEPAGE="https://www.genymotion.com"

SRC_URI="
	amd64? (
		https://dl.genymotion.com/releases/${P}/${P}_x64.bin
	)
"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND} virtual/opengl media-libs/libpng || ( >=app-emulation/virtualbox-bin-4.1.1 )"

S=${DISTDIR}

src_install() {
	mkdir "${D}/opt"

	if use amd64; then
		yes | bash ${P}_x64.bin -d "${D}/opt"
	elif use x86; then
		yes | bash ${P}_x86.bin -d "${D}/opt"
	fi

	mkdir -p "${D}/usr/bin"
	ln -s "/opt/genymotion/genymotion" "${D}/usr/bin" 
	ln -s "/opt/genymotion/genymotion-shell" "${D}/usr/bin" 
	ln -s "/opt/genymotion/player" "${D}/usr/bin/genymotion-player"
	ln -s "/opt/genymotion/gmtool" "${D}/usr/bin"
	make_desktop_entry genymotion "Genymotion" "/opt/genymotion/icons/icon.png" "System;Emulator"
}
