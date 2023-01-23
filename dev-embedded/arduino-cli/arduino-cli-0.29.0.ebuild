# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
#inherit go-module

DESCRIPTION="Arduino command line tool"
HOMEPAGE="https://arduino.github.io/arduino-cli "
HOMEPAGE+="https://github.com/arduino/arduino-cli"
#SRC_URI="https://github.com/arduino/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI="https://github.com/arduino/${PN}/releases/download/${PV}/${PN}_${PV}_Linux_64bit.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"

S=${WORKDIR}

src_install() {
	dobin ${PN}
	newbashcomp "${FILESDIR}"/arduino-cli_bash_completion ${PN}
}
