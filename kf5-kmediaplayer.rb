require "formula"

class Kf5Kmediaplayer < Formula
  url "http://download.kde.org/stable/frameworks/5.32/portingAids/kmediaplayer-5.32.0.tar.xz"
  sha256 "c461a6a07ad3c376cc375e9f66b44ded807283f7de13dc2b5e35779cbf6b06e9"
  homepage "http://www.kde.org/"

  head 'git://anongit.kde.org/attica.git'

  depends_on "cmake" => :build
  depends_on "haraldf/kf5/kf5-extra-cmake-modules" => :build
  depends_on "haraldf/kf5/kf5-kparts"
  depends_on "qt5"

  def install
    args = std_cmake_args


    system "cmake", ".", *args
    system "make", "install"
    prefix.install "install_manifest.txt"
  end
end
