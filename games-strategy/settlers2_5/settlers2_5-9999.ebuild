# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit autotools bzr

EBZR_REPO_URI="lp:s25rttr"
SRC_URI=""

DESCRIPTION="Inofficial expansion for The Settlers 2"
HOMEPAGE="http://siedler25.org/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

EBZR_REPO_URI "lp:s25rttr"

src_unpack() {
	bzr_src_unpack
}

src_compile() {
	emake || die "emake failed."
}

src_install () {
	emake install || die "emake failed"
}