EAPI=5

DESCRIPTION="Pidgin plugin for adding Xfire accounts and connecting to the Xfire network"
HOMEPAGE="http://gfireproject.org"
EGIT_REPO_URI="git://github.com/gfireproject/gfire.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-vcs/git"

src_configure() {
	econf --prefix=/usr
}

src_install() {
	emake DESTDIR="${D}" install
}