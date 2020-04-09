class Bottom < Formula
  desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
  homepage "https://github.com/ClementTsang/bottom"
  url "https://github.com/ClementTsang/bottom/releases/download/0.3.0/bottom_x86_64-apple-darwin.tar.gz"
  sha256 "02bccf982e6e7e2ba9be5578d1cbdb4c8b5d13632f97340b7e435147fe3d2c16"
  version "0.3.0"

  def install
    bin.install "btm"
    ohai "You're done!  Run with \"btm\""
    ohai "If you want to configure bottom, by default bottom looks for a file in $HOME/.config/bottom/bottom.toml"
  end
end
