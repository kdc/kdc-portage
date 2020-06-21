# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit golang-vcs golang-build golang-vcs-snapshot

EGO_VENDOR=(
	"dmitri.shuralyov.com/gpu/mtl v0.0.0-20190408044501-666a987793e9/go.mod"
	"github.com/BurntSushi/xgb v0.0.0-20160522181843-27f122750802/go.mod"
	"github.com/JoshVarga/blast v0.0.0-20180421040937-681c804fb9f0"
	"github.com/JoshVarga/blast v0.0.0-20180421040937-681c804fb9f0/go.mod"
	"github.com/alecthomas/template v0.0.0-20190718012654-fb15b899a751"
	"github.com/alecthomas/template v0.0.0-20190718012654-fb15b899a751/go.mod"
	"github.com/alecthomas/units v0.0.0-20190924025748-f65c72e2690d"
	"github.com/alecthomas/units v0.0.0-20190924025748-f65c72e2690d/go.mod"
	"github.com/beefsack/go-astar v0.0.0-20171024231011-f324bbb0d6f7"
	"github.com/beefsack/go-astar v0.0.0-20171024231011-f324bbb0d6f7/go.mod"
	"github.com/davecgh/go-spew v1.1.0"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/go-gl/glfw v0.0.0-20190409004039-e6da0acd62b1"
	"github.com/go-gl/glfw v0.0.0-20190409004039-e6da0acd62b1/go.mod"
	"github.com/go-gl/glfw/v3.3/glfw v0.0.0-20191125211704-12ad95a8df72"
	"github.com/go-gl/glfw/v3.3/glfw v0.0.0-20191125211704-12ad95a8df72/go.mod"
	"github.com/go-gl/glfw/v3.3/glfw v0.0.0-20200222043503-6f7a984d4dc4"
	"github.com/go-gl/glfw/v3.3/glfw v0.0.0-20200222043503-6f7a984d4dc4/go.mod"
	"github.com/go-restruct/restruct v0.0.0-20191227155143-5734170a48a1"
	"github.com/go-restruct/restruct v0.0.0-20191227155143-5734170a48a1/go.mod"
	"github.com/gofrs/flock v0.7.1"
	"github.com/gofrs/flock v0.7.1/go.mod"
	"github.com/golang/freetype v0.0.0-20170609003504-e2365dfdc4a0/go.mod"
	"github.com/hajimehoshi/bitmapfont v1.2.0/go.mod"
	"github.com/hajimehoshi/ebiten v1.11.0-alpha.2.0.20200102072751-e66f1fb71e2e"
	"github.com/hajimehoshi/ebiten v1.11.0-alpha.2.0.20200102072751-e66f1fb71e2e/go.mod"
	"github.com/hajimehoshi/ebiten v1.11.2"
	"github.com/hajimehoshi/ebiten v1.11.2/go.mod"
	"github.com/hajimehoshi/ebiten v1.12.0-alpha.2.0.20200614175121-0b94e2e03645"
	"github.com/hajimehoshi/ebiten v1.12.0-alpha.2.0.20200614175121-0b94e2e03645/go.mod"
	"github.com/hajimehoshi/go-mp3 v0.2.1/go.mod"
	"github.com/hajimehoshi/go-mp3 v0.3.0/go.mod"
	"github.com/hajimehoshi/oto v0.3.4/go.mod"
	"github.com/hajimehoshi/oto v0.5.4"
	"github.com/hajimehoshi/oto v0.5.4/go.mod"
	"github.com/hajimehoshi/oto v0.6.1"
	"github.com/hajimehoshi/oto v0.6.1/go.mod"
	"github.com/jakecoffman/cp v0.1.0/go.mod"
	"github.com/jfreymuth/oggvorbis v1.0.0/go.mod"
	"github.com/jfreymuth/oggvorbis v1.0.1/go.mod"
	"github.com/jfreymuth/vorbis v1.0.0/go.mod"
	"github.com/kr/pretty v0.1.0"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/mattn/go-sqlite3 v1.13.0"
	"github.com/mattn/go-sqlite3 v2.0.3+incompatible"
	"github.com/mattn/go-sqlite3 v2.0.3+incompatible/go.mod"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e/go.mod"
	"github.com/pebbe/zmq4 v1.2.1"
	"github.com/pebbe/zmq4 v1.2.1/go.mod"
	"github.com/pkg/browser v0.0.0-20180916011732-0a3d74bf9ce4/go.mod"
	"github.com/pkg/errors v0.8.1"
	"github.com/pkg/errors v0.8.1/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/robertkrimen/otto v0.0.0-20191219234010-c382bd3c16ff"
	"github.com/robertkrimen/otto v0.0.0-20191219234010-c382bd3c16ff/go.mod"
	"github.com/satori/go.uuid v1.2.0"
	"github.com/satori/go.uuid v1.2.0/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/testify v1.4.0"
	"github.com/stretchr/testify v1.4.0/go.mod"
	"github.com/yuin/goldmark v1.1.25/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20190510104115-cbcb75029529/go.mod"
	"golang.org/x/crypto v0.0.0-20191011191535-87dc89f01550/go.mod"
	"golang.org/x/exp v0.0.0-20190306152737-a1d7652674e8/go.mod"
	"golang.org/x/exp v0.0.0-20190731235908-ec7cb31e5a56"
	"golang.org/x/exp v0.0.0-20190731235908-ec7cb31e5a56/go.mod"
	"golang.org/x/exp v0.0.0-20191030013958-a1ab85dbe136"
	"golang.org/x/exp v0.0.0-20191030013958-a1ab85dbe136/go.mod"
	"golang.org/x/image v0.0.0-20190227222117-0694c2d4d067/go.mod"
	"golang.org/x/image v0.0.0-20190703141733-d6a02ce849c9/go.mod"
	"golang.org/x/image v0.0.0-20190802002840-cff245a6509b/go.mod"
	"golang.org/x/image v0.0.0-20191009234506-e7c1f5e7dbb8"
	"golang.org/x/image v0.0.0-20191009234506-e7c1f5e7dbb8/go.mod"
	"golang.org/x/image v0.0.0-20200119044424-58c23975cae1"
	"golang.org/x/image v0.0.0-20200119044424-58c23975cae1/go.mod"
	"golang.org/x/mobile v0.0.0-20190312151609-d3739f865fa6/go.mod"
	"golang.org/x/mobile v0.0.0-20190415191353-3e0bab5405d6/go.mod"
	"golang.org/x/mobile v0.0.0-20190719004257-d2bd2a29d028/go.mod"
	"golang.org/x/mobile v0.0.0-20191025110607-73ccc5ba0426/go.mod"
	"golang.org/x/mobile v0.0.0-20191115022231-f0c40035f2ba"
	"golang.org/x/mobile v0.0.0-20191115022231-f0c40035f2ba/go.mod"
	"golang.org/x/mobile v0.0.0-20200222142934-3c8601c510d0"
	"golang.org/x/mobile v0.0.0-20200222142934-3c8601c510d0/go.mod"
	"golang.org/x/mobile v0.0.0-20200329125638-4c31acba0007"
	"golang.org/x/mobile v0.0.0-20200329125638-4c31acba0007/go.mod"
	"golang.org/x/mod v0.1.0/go.mod"
	"golang.org/x/mod v0.1.1-0.20191105210325-c90efee705ee/go.mod"
	"golang.org/x/mod v0.1.1-0.20191209134235-331c550502dd/go.mod"
	"golang.org/x/mod v0.2.0/go.mod"
	"golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/net v0.0.0-20200226121028-0de0cce0169b/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190312061237-fead79001313/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20190429190828-d89cdac9e872/go.mod"
	"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037"
	"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod"
	"golang.org/x/sys v0.0.0-20191115151921-52ab43148777"
	"golang.org/x/sys v0.0.0-20191115151921-52ab43148777/go.mod"
	"golang.org/x/sys v0.0.0-20200327173247-9dae0f8f5775"
	"golang.org/x/sys v0.0.0-20200327173247-9dae0f8f5775/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/tools v0.0.0-20190312151545-0bb0c0a6e846/go.mod"
	"golang.org/x/tools v0.0.0-20190909214602-067311248421/go.mod"
	"golang.org/x/tools v0.0.0-20191012152004-8de300cfc20a/go.mod"
	"golang.org/x/tools v0.0.0-20191026034945-b2104f82a97d/go.mod"
	"golang.org/x/tools v0.0.0-20191119224855-298f0cb1881e/go.mod"
	"golang.org/x/tools v0.0.0-20200117012304-6edc0a871e69/go.mod"
	"golang.org/x/tools v0.0.0-20200117220505-0cba7a3a9ee9/go.mod"
	"golang.org/x/tools v0.0.0-20200330175517-31583a0dbbc8/go.mod"
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
	"golang.org/x/xerrors v0.0.0-20191011141410-1b5146add898/go.mod"
	"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod"
	"gopkg.in/alecthomas/kingpin.v2 v2.2.6"
	"gopkg.in/alecthomas/kingpin.v2 v2.2.6/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15"
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15/go.mod"
	"gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f/go.mod"
	"gopkg.in/sourcemap.v1 v1.0.5"
	"gopkg.in/sourcemap.v1 v1.0.5/go.mod"
	"gopkg.in/yaml.v2 v2.2.2"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
)

DESCRIPTION="An open source re-implementation of Diablo 2 https"
HOMEPAGE="https://opendiablo2.com/
https://github.com/OpenDiablo2/OpenDiablo2"
EGO_PN=github.com/OpenDiablo2/OpenDiablo2

SRC_URI="${EGO_VENDOR_URI}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="media-libs/alsa-lib
media-libs/libsdl2
media-libs/libglvnd
x11-libs/libGLw
x11-libs/libXi
x11-libs/libXinerama
x11-libs/libXrandr
x11-libs/libXcursor"
RDEPEND="${DEPEND}"

src_compile() {
	pushd src/${EGO_PN} || die
	go build -o build/opendiablo2 || die
	popd
}

src_install() {
	pushd src/${EGO_PN} || die
	dobin build/opendiablo2
	popd || die
}
