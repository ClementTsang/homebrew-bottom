class Bottom < Formula
  desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
  homepage "https://github.com/ClementTsang/bottom"
  url "https://github.com/ClementTsang/bottom/releases/download/0.4.1/bottom_x86_64-apple-darwin.tar.gz"
  sha256 "660070c66934d0e60a01d39760093121475fb8cfc9813297d2330a02a6bb9304"
  version "0.4.1"

  def install
    bin.install "btm"
    ohai "You're done!  Run with \"btm\""
    ohai "For runtime flags, see \"btm --help\""
    ohai "If you want to configure bottom, by default bottom looks for a file in $HOME/.config/bottom/bottom.toml"
  end
end
