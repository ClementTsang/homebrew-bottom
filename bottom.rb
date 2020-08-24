class Bottom < Formula
    desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
    homepage "https://github.com/ClementTsang/bottom"
    url "https://github.com/ClementTsang/bottom/releases/download/0.4.5-1/bottom_x86_64-apple-darwin.tar.gz"
    sha256 "9246d3ce66164370162320706f6fe9a3657f3caf435a6b355e7b376cb9d3be93"
    version "0.4.5-1"
  
    def install
      bin.install "btm"
      ohai "You're done!  Run with \"btm\""
      ohai "For runtime flags, see \"btm --help\""
      ohai "If you want to configure bottom, by default bottom looks for a file in $HOME/.config/bottom/bottom.toml"
    end
  end
  