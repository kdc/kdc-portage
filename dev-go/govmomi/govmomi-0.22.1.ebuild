# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

EGO_SUM=(
        "github.com/davecgh/go-xdr v0.0.0-20161123171359-e6a2ba005892"
        "github.com/davecgh/go-xdr v0.0.0-20161123171359-e6a2ba005892/go.mod"
        "github.com/dougm/pretty v0.0.0-20171025230240-2ee9d7453c02"
        "github.com/dougm/pretty v0.0.0-20171025230240-2ee9d7453c02/go.mod"
        "github.com/google/uuid v0.0.0-20170306145142-6a5e28554805"
        "github.com/google/uuid v0.0.0-20170306145142-6a5e28554805/go.mod"
        "github.com/kr/pty v1.1.1/go.mod"
        "github.com/kr/text v0.1.0"
        "github.com/kr/text v0.1.0/go.mod"
        "github.com/rasky/go-xdr v0.0.0-20170217172119-4930550ba2e2"
        "github.com/rasky/go-xdr v0.0.0-20170217172119-4930550ba2e2/go.mod"
        "github.com/vmware/vmw-guestinfo v0.0.0-20170707015358-25eff159a728"
        "github.com/vmware/vmw-guestinfo v0.0.0-20170707015358-25eff159a728/go.mod"
		"github.com/golang/tools v0.0.0-20190327011446-79af862e6737/go.mod"
)
go-module_set_globals

DESCRIPTION="Go library for the VMware vSphere API"
HOMEPAGE="https://github.com/vmware/govmomi"
EGO_PN="github.com/vmware/govmomi"
ARCHIVE_URI="https://${EGO_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

SRC_URI="${ARCHIVE_URI}
	${EGO_SUM_SRC_URI}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	go-module_src_unpack
}

src_install() {
	dobin toffies
	dodoc README.md
}
