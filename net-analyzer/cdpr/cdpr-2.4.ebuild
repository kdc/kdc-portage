# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Cisco Discovery Protocol Reporter"
HOMEPAGE="http://cdpr.sourceforge.net/"
SRC_URI="https://sourceforge.net/projects/${PN}/files/${PN}/${PVR}/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sparc ~x86"
IUSE=""

DEPEND="net-libs/libpcap"
