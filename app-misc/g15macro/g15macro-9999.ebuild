# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $HEADER: $

inherit eutils subversion autotools

DESCRIPTION="Macro recording plugin to G15daemon"
HOMEPAGE="http://g15daemon.sourceforge.net/"
#SRC_URI="mirror://sourceforge/g15daemon/${P}.tar.gz"
ESVN_REPO_URI="https://g15daemon.svn.sourceforge.net/svnroot/g15daemon/trunk/g15daemon-clients/g15macro"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc ~ppc64 x86"
IUSE=""

DEPEND=">=app-misc/g15daemon-1.9.0
	dev-libs/libg15
	dev-libs/libg15render
	x11-libs/libX11
	x11-proto/xextproto
	x11-proto/xproto
	x11-libs/libXtst"

RDEPEND="${DEPEND}
	sys-libs/zlib"
	
src_unpack() {
	subversion_src_unpack
	cd "${S}"
	./autogen.sh
}

src_compile() {
	econf --enable-xtest
	emake || die "make failed"
}

src_install() {
	default
	rm -rf "${ED}"/usr/share/doc/${P}
}
