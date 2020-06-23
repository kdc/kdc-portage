# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{6..8} )

inherit distutils-r1 eutils

DESCRIPTION="Microsoft Azure Linux Guest Agent"
HOMEPAGE="https://github.com/Azure/WALinuxAgent"
SRC_URI="${HOMEPAGE}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
	dev-python/pyasn1[${PYTHON_USEDEP}]
	sys-apps/util-linux
	app-admin/sudo"

S="${WORKDIR}/WALinuxAgent-${PV}"

src_prepare() {
	# do not install tests
	rm -rf tests
	
	# allow root login
	# use ed25519 instead of rsa
	sed -i \
		-e '/Provisioning.DeleteRootPassword/s/=.*$/=n/' \
		-e '/Provisioning.SshHostKeyPairType/s/=.*$/=ed25519/' \
		-e '/AutoUpdate.Enabled/s/=.*$/=n/' \
		"${S}"/config/waagent.conf || die

	# install init.d / logrotate in gentoo way
	sed -i \
		-e '/set_logrotate_files(data_files)/d' \
		-e 's/set_sysv_files(data_files)/print/g' \
		-e 's@/etc/udev/rules.d/@/lib/udev/rules.d/@g' \
		"${S}"/setup.py || die

	# use dhcpcd instead of dhcp that fails to start
	# "Unable to set up timer: out of range"
	sed -i -e 's/pidof dhclient/pidof dhcpcd/' \
		"${S}"/azurelinuxagent/common/osutil/default.py || die

	default
}

python_install_all() {
	newinitd "${FILESDIR}"/waagent.initd waagent

	insinto "/etc"
	doins config/waagent.conf

	insinto /etc/logrotate.d
	newins config/waagent.logrotate waagent

	keepdir /var/lib/waagent
	
	distutils-r1_python_install_all
}
