class Bottom < Formula
  desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
  homepage "https://github.com/ClementTsang/bottom"
  version "0.4.4"
  url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-apple-darwin.tar.gz"
  sha256 "19f7d625fc173ac9178aba9098a057fb3254d72a880703c91bf0834f10045ad0"

  def install
    bin.install "btm"
    ohai "You're done!  Run with \"btm\""
    ohai "For runtime flags, see \"btm --help\""
    ohai "If you want to configure bottom, by default bottom looks for a file in $HOME/.config/bottom/bottom.toml"
  end
end
