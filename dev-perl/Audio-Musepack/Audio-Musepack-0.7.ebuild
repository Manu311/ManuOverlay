# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit perl-module

DESCRIPTION="An object-oriented interface to Musepack file information and APE tag fields."
SRC_URI="mirror://cpan/authors/id/D/DA/DANIEL/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/~daniel"

SLOT="0"
LICENSE="Artistic"
KEYWORDS="alpha amd64 hppa ia64 ppc sparc ~x86"
IUSE=""
DEPEND="dev-lang/perl
	dev-perl/MP3-Info"

SRC_TEST="do"
