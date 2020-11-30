# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module bash-completion-r1

DESCRIPTION="A tool for building, changing, and combining infrastructure safely"
HOMEPAGE="https://www.terraform.io/"
SRC_URI="https://github.com/hashicorp/${PN}/archive/v${PV}.tar.gz -> terraform-${PV}.tar.gz"

LICENSE="Apache-2.0 BSD-2 BSD-4 ECL-2.0 imagemagick ISC JSON MIT MIT-with-advertising MPL-2.0 unicode"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="test"

src_compile() {
	go build \
		-mod vendor \
		-work -o "bin/terraform" ./ || die
}

src_install() {
	newbin bin/terraform terraform
	newbashcomp "${FILESDIR}"/terraform.completion.bash terraform
}
