class Bottom < Formula
  desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
  homepage "https://github.com/ClementTsang/bottom"
  url "https://github.com/ClementTsang/bottom/releases/download/0.2.2/bottom_x86_64-apple-darwin.tar.gz"
  sha256 "e0ebb8f436c68168450f3b06ca4027b6bb3e3acbc4a2398d01f21a06d7b3a809"
  version "0.2.2"

  def install
    bin.install "btm"
    ohai "You're done!  Run with \"btm\""
    ohai "If you want to configure bottom, by default bottom looks for a file in $HOME/.config/bottom/bottom.toml"
  end
end
