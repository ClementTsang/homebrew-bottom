class Bottom < Formula
  desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
  homepage "https://github.com/ClementTsang/bottom"
  url "https://github.com/ClementTsang/bottom/releases/download/0.4.3/bottom_x86_64-apple-darwin.tar.gz"
  sha256 "bf730fe20c5b9cd5dda09c2c61f5e7c2034e10e1721e182ecfc7e4bbd0962d35"
  version "0.4.5"

  def install
    bin.install "btm"
    ohai "You're done!  Run with \"btm\""
    ohai "For runtime flags, see \"btm --help\""
    ohai "If you want to configure bottom, by default bottom looks for a file in $HOME/.config/bottom/bottom.toml"
  end
end
