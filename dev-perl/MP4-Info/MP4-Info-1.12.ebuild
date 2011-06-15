# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

inherit perl-module

DESCRIPTION="Fetch info from MPEG-4 files (.mp4, .m4a, .m4p, .3gp)."
SRC_URI="mirror://cpan/authors/id/J/JH/JHAR/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/~jhar/${P}"

SLOT="0"
LICENSE="Artistic"
KEYWORDS="alpha amd64 hppa ia64 ~mips ppc ~ppc64 sparc ~x86"
IUSE=""

SRC_TEST="do"



DEPEND="dev-lang/perl
		dev-perl/IO-String"
RDEPEND="${DEPEND}"