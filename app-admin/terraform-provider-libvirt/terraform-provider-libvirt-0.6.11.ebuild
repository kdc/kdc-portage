# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

DESCRIPTION="Terraform provider to provision infrastructure with Linux's KVM using libvirt"
HOMEPAGE="https://github.com/dmacvicar/terraform-provider-libvirt"
SRC_URI="https://github.com/dmacvicar/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="app-emulation/libvirt-glib
dev-lang/go
app-cdr/cdrtools
app-admin/terraform"

src_compile() {
	go build -mod vendor -work -o "bin/${PN}" ./ || die
}

src_install() {
	newbin bin/terraform-provider-libvirt terraform-provider-libvirt
	dodoc docs/README.md
	dodoc -r examples/
}
