class Bottom < Formula
    desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
    homepage "https://github.com/ClementTsang/bottom"
    version "0.5.0"
    if OS.mac?
      url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-apple-darwin.tar.gz"
      sha256 "a632fff91a2ae1012d6704e58f63770ff1d5af22d390e56fbd54dd267ebbdbef"
    elsif OS.linux?
      url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0179d6e028dce99f547d0d982783e762719f46fcc12076cc9cc1f26e8886fa72"
    end
  
    def install
      bash_completion.install "completion/rg.bash"
      zsh_completion.install "completion/_rg"
      bin.install "btm"
      ohai "You're done!  Run with \"btm\""
      ohai "For runtime flags, see \"btm --help\""
      ohai "If you want to configure bottom, by default bottom looks for a file in $HOME/Library/Application Support/bottom.toml or $HOME/.config/bottom/bottom.toml"
    end
  end
  