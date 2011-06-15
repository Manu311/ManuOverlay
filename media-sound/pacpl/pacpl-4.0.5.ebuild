# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Perl Audio Converter"
HOMEPAGE="http://pacpl.sourceforge.net"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="amarok dolphin ffmpeg flac konqueror mad musepack shorten sox tta wavpack"

DEPEND="amarok? ( media-sound/amarok )
		dolphin? ( kde-base/dolphin )
		konqueror? ( kde-base/konqueror )
		ffmpeg? ( media-video/ffmpeg )
		flac? ( media-libs/flac
				dev-perl/Audio-FLAC-Header )
		mad? ( || ( media-sound/lame media-sound/toolame ) )
		musepack? ( media-sound/musepack-tools )
		shorten? ( media-sound/shorten )
		sox? ( media-sound/sox )
		tta? ( media-sound/ttaenc )
		wavpack? ( media-sound/wavpack )
		>=media-video/mplayer-1.0_rc1
		>=dev-lang/perl-5.8.7
		>=dev-perl/CDDB_get-2.27
		>=dev-perl/Parse-RecDescent-1.94
		>=dev-perl/ogg-vorbis-header-0.03
		>=dev-perl/MP3-Info-1.13
		>=dev-perl/MP3-Tag-0.9709
		>=dev-perl/Audio-Musepack-0.7
		>=dev-perl/Audio-FLAC-Header-2.2
		>=dev-perl/Audio-WMA-1.1
		>=dev-perl/MP4-Info-1.2"
RDEPEND="${DEPEND}"

src_compile() {
	# no idea atm ow to do this for different slots...
	export PATH="${PATH}:/usr/kde/svn/bin"
	
	econf \
		--without-d3lphin \
		$(use_with konqueror konq) \
		$(use_with amarok) \
		$(use_with dolphin) \
		|| die

	emake || die
}

src_install() {
	make KDEDIR="/usr/kde/svn" DESTDIR="${D}" install || die
}

