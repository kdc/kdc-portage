# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

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

RESTRICT="primaryuri strip"

S="${WORKDIR}/aws"

src_install() {
	dodir "/opt/${PN}"
	cp -rT "${S}/dist/" "${D}/opt/${PN}/" || die "install failed!"
	fperms 0775 "/opt/${PN}/aws"
	fperms 0775 "/opt/${PN}/aws_completer"
	dosym "${D}/opt/awscli/aws" "usr/bin/aws"
	dosym "${D}/opt/awscli/aws_completer" "usr/bin/aws_completer"
	mkdir -p "${D}/etc/bash_completion.d" || die
	cp "${FILESDIR}/awscli.bash" "${D}/etc/bash_completion.d/" || die
}
