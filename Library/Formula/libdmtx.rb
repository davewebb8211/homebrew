require 'formula'

class Libdmtx < Formula
  url 'http://downloads.sourceforge.net/project/libdmtx/libdmtx/0.7.4/libdmtx-0.7.4.tar.bz2'
  homepage 'http://www.libdmtx.org'
  md5 'd3a4c0becd92895eb606dbdb78b023e2'

  depends_on 'pkg-config' => :build
  depends_on 'imagemagick'

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
