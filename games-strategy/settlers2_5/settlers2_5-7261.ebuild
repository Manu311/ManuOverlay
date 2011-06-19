# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit autotools cmake-utils

SRC_URI="http://www.siedler25.org/uploads/nightly/s25rttr_20110617-7261_linux.i386.tar.bz2"

DESCRIPTION="Inofficial expansion for The Settlers 2"
HOMEPAGE="http://siedler25.org/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	media-libs/libsdl
	media-libs/sdl-mixer
	"

src_unpack() {
	unpack $(A)
}

src_compile() {
	emake || die "failed emake"
}

src_install() {
	emake install
}