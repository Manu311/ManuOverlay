# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/libg15render/libg15render-1.2-r1.ebuild,v 1.6 2007/05/01 10:33:05 corsair Exp $

inherit eutils subversion autotools

DESCRIPTION="Small library for display text and graphics on a Logitech G15 keyboard"
HOMEPAGE="http://g15tools.sourceforge.net/"
#SRC_URI="mirror://sourceforge/g15tools/${P}.tar.bz2"
ESVN_REPO_URI="https://g15tools.svn.sourceforge.net/svnroot/g15tools/trunk/libg15render"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc ppc64 x86"

IUSE="truetype"

DEPEND="dev-libs/libg15
	truetype? ( media-libs/freetype )"

RDEPEND=${DEPEND}

src_unpack() {
	subversion_src_unpack
	cd "${S}"
	./bootstrap
}

src_compile() {
	econf \
		$(use_enable truetype ttf ) \
		|| die "configure failed"

	emake || die "make failed"
}

src_install() {
	emake DESTDIR="${D}" \
		docdir=/usr/share/doc/${PF} install || die "make install failed"
	rm "${D}/usr/share/doc/${PF}/COPYING"

	prepalldocs
}
