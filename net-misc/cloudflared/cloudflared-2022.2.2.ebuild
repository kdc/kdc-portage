# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

EGO_PN="github.com/cloudflare/${PN}"
EGO_VENDOR=(
)

inherit golang-build golang-vcs-snapshot

DESCRIPTION="Argo Tunnel client, written in GoLang"
HOMEPAGE="https://developers.cloudflare.com/argo-tunnel/
https://github.com/cloudflare/cloudflared/"
ARCHIVE_URI="https://${EGO_PN}/archive/${PV}.tar.gz -> ${P}.tar.gz
${EGO_VENDOR_URI}"
SRC_URI="${ARCHIVE_URI}"
RESTRICT="primaryuri"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="+pie"

src_compile() {
	use pie && local build_pie="-buildmode=pie"
	local build_flags="$( echo ${EGO_BUILD_FLAGS} ) $( echo ${build_pie} )"

	set -- env GOPATH="${WORKDIR}/${P}:$(get_golibdir_gopath)" \
		GOCACHE="${T}/go-cache" \
		CGO_ENABLED=0 \
		GO111MODULE=off \
		go install -v -work -x ${build_flags} ${EGO_PN}/cmd/...
			echo "$@"
			"$@" || die
}

src_install() {
	dobin bin/*
	newconfd $FILESDIR/$PN.confd $PN
	newinitd $FILESDIR/$PN.initd $PN
}
