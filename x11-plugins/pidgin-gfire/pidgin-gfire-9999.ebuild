EAPI=5

inherit git-2

DESCRIPTION="Pidgin plugin for adding Xfire accounts and connecting to the Xfire network"
HOMEPAGE="http://gfireproject.org"
EGIT_REPO_URI="git://github.com/gfireproject/gfire.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

src_prepare() {
	sh autogen.sh
}

src_configure() {
	econf --prefix=/usr
}

src_install() {
	emake DESTDIR="${D}" install
}