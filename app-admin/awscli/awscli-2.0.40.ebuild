# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Universal Command Line Interface for Amazon Web Services version 2"
HOMEPAGE="https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html
https://github.com/aws/aws-cli/tree/v2"
SRC_URI="https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/aws"

src_install() {
	dodir /opt/${PN}
	cp -rT "${S}/dist/" "${D}/opt/${PN}/" || die "install failed!"
	dosym "${D}/opt/awscli/aws" usr/bin/${PN}
	dobashcomp "${S}/dist/aws_completer"
}
