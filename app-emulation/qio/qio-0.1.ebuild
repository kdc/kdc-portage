# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="QEMU Init OpenRC"
HOMEPAGE="https://github.com/SpiderX/qio"
SRC_URI="https://github.com/SpiderX/qio/archive/0.2.tar.gz"

LICENSE="MIT"
SLOT=0
KEYWORDS=""

RDEPEND="!app-emulation/qemu-init-scripts
	app-emulation/qemu
	net-misc/socat"

src_install() {
	newinitd qemu.initd qemu
	newconfd qemu.confd qemu
	dosym qemu /etc/init.d/kvm
}
