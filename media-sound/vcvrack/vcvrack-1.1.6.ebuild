# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="The Eurorack Simulator"
HOMEPAGE="https://vcvrack.com/"
SRC_URI="https://github.com/VCVRack/Rack/archive/refs/tags/${PV}.tar.gz"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	git submodule update --init --recursive
}

src_install() {
	emake dep
	emake
}
