class Bottom < Formula
  desc "A feature-full and cross-platform graphical process/system monitor."
  homepage "https://github.com/ClementTsang/bottom"
  url "https://github.com/ClementTsang/bottom/releases/download/0.2.0/bottom_x86_64-apple-darwin.tar.gz"
  sha256 "3338ff86474345986746a11e042857b4903011e5bde99e20659f37d5992c196c"
  version "0.2.1"

  def install
    bin.install "btm"
    ohai "You're done!  Run with \"btm\""
    ohai "If you want to configure bottom, by default bottom looks for a file in $HOME/.config/bottom/bottom.toml"
  end
end
