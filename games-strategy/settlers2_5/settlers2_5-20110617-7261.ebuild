# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit autotools bzr cmake-utils

SRC_URI="http://www.siedler25.org/uploads/nightly/s25rttr_{$PV}_linux.i386.tar.bz2"

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