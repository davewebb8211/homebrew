require 'formula'

class DmtxUtils < Formula
  url 'http://downloads.sourceforge.net/project/libdmtx/libdmtx/0.7.4/dmtx-utils-0.7.4.tar.bz2'
  homepage 'http://www.libdmtx.org'
  md5 'b132ab9fb1d289869469b8bb4959a08a'

  depends_on 'libdmtx'

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make"
    system "make install"
  end

  def test
    # Simple test. As I did not find any documentation on how a test
    # should be designed for homebrew I just tried to call both binaries.
    system "echo 'libdmtx in homebrew 123456789' | dmtxwrite | dmtxread"
    puts "^---- That works!"
  end
end
