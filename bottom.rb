class Bottom < Formula
  desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
  homepage "https://github.com/ClementTsang/bottom"
  url "https://github.com/ClementTsang/bottom/releases/download/0.4.3/bottom_x86_64-apple-darwin.tar.gz"
  sha256 "f874eea08a1706f27e6df247f9a3c5e50b9332e3cd11557f8962313a38fb651f"
  version "0.4.3"

  def install
    bin.install "btm"
    ohai "You're done!  Run with \"btm\""
    ohai "For runtime flags, see \"btm --help\""
    ohai "If you want to configure bottom, by default bottom looks for a file in $HOME/.config/bottom/bottom.toml"
  end
end
