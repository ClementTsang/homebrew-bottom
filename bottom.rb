class Bottom < Formula
  desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
  homepage "https://github.com/ClementTsang/bottom"
  url "https://github.com/ClementTsang/bottom/releases/download/0.2.2/bottom_x86_64-apple-darwin.tar.gz"
  sha256 "992b599ea472f9eaaeaa3c43f41f94557645a47ad77b948a703c4d040a346c0a"
  version "0.2.2"

  def install
    bin.install "btm"
    ohai "You're done!  Run with \"btm\""
    ohai "If you want to configure bottom, by default bottom looks for a file in $HOME/.config/bottom/bottom.toml"
  end
end
