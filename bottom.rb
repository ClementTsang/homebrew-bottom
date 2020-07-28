class Bottom < Formula
  desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
  homepage "https://github.com/ClementTsang/bottom"
  if OS.mac?
    url "https://github.com/ClementTsang/bottom/releases/download/0.4.5/bottom_x86_64-apple-darwin.tar.gz"
    sha256 "966dbd50954714bf2e904f882fe4e3da5c284095e5f89b1e4eba6aa7ed9e8c63"
  elsif OS.linux?
    url "https://github.com/ClementTsang/bottom/releases/download/0.4.5/bottom_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b635a5f834e300ee207733b42946b4dc96fb1d43e477d47eaf5ba97601d26d7d"
  end
  version "0.4.5"

  def install
    bin.install "btm"
    ohai "You're done!  Run with \"btm\""
    ohai "For runtime flags, see \"btm --help\""
    ohai "If you want to configure bottom, by default bottom looks for a file in $HOME/.config/bottom/bottom.toml"
  end
end
