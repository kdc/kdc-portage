# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit golang-vcs golang-build

DESCRIPTION="An open source re-implementation of Diablo 2 https"
HOMEPAGE="https://opendiablo2.com/
https://github.com/OpenDiablo2/OpenDiablo2"
EGO_PN=github.com/OpenDiablo2/OpenDiablo2

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="media-libs/alsa-lib
media-libs/libsdl2
media-libs/libglvnd
x11-libs/libGLw
x11-libs/libXi
x11-libs/libXinerama
x11-libs/libXrandr
x11-libs/libXcursor"
RDEPEND="${DEPEND}"

src_compile() {
	pushd src/${EGO_PN} || die
	go build -o build/opendiablo2 || die
	popd
}

src_install() {
	pushd src/${EGO_PN} || die
	dobin build/opendiablo2
	popd || die
}
