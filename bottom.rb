class Bottom < Formula
  desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
  homepage "https://github.com/ClementTsang/bottom"
  url "https://github.com/ClementTsang/bottom/releases/download/0.4.0/bottom_x86_64-apple-darwin.tar.gz"
  sha256 "5ed72b78d9d4699c4c97112f3f77dcccbd402ea560569170c2e12b3e6615ad2c"
  version "0.4.0"

  def install
    bin.install "btm"
    ohai "You're done!  Run with \"btm\""
    ohai "If you want to configure bottom, by default bottom looks for a file in $HOME/.config/bottom/bottom.toml"
  end
end
