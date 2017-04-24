require "formula"

class Kf5Kdeui < Formula
  url "https://github.com/The-Oracle/homebrew-kf5/raw/5abff398466d1a4519dc62683ac4272198c7a274/kdeui-5.32.0.tar.xz"
  sha256 "59009aaa5b23aea3a49d79652fffaff6f549d433f19812808f2b1de81f33143a"
  homepage "http://www.kde.org/"

  head 'git://github.com/The-Oracle/kdeui.git'

  depends_on "cmake" => :build
  depends_on "haraldf/kf5/kf5-extra-cmake-modules" => :build
  depends_on "haraldf/kf5/kf5-kpty"
  depends_on "qt5"
  depends_on "gettext" => :build

  def install
    args = std_cmake_args

    system "cmake", ".", *args
    system "make", "install"
    prefix.install "install_manifest.txt"
  end
end