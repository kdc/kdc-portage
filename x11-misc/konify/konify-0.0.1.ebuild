# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="The world’s most-loved password manager CLI"
HOMEPAGE="https://xyne.dev/scripts/graphics/konify/"
SRC_URI="https://xyne.dev/scripts/graphics/konify/konify.pl"

LICENSE="GPL"
SLOT="0"
KEYWORDS=""

RESTRICT="mirror strip test bindist"

DEPEND="media-gfx/imagemagick[perl]"
RDEPEND="${DEPEND}"
BDEPEND=""

S=${WORKDIR}

src_install() {
	dobin konify.pl
}
