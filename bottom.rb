class Bottom < Formula
  desc "A feature-full and cross-platform graphical process/system monitor."
  homepage "https://github.com/ClementTsang/bottom"
  url "https://github.com/ClementTsang/bottom/releases/download/0.2.0/bottom_x86_64-apple-darwin.tar.gz"
  sha256 "a4f903fc9d80a2a483676663b4c3cb59bd02e072ab129d5a35e1bfd7333212aa"
  version "0.2.0"

  def install
    bin.install "btm"
    ohai "You're done!  Run with \"btm\""
    ohai "If you want to configure bottom, by default bottom looks for a btm.toml file in ~/.config/btm/"
  end
end
