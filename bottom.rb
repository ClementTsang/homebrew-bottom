class Bottom < Formula
    desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
    homepage "https://github.com/ClementTsang/bottom"
    version "0.5.7"
    if OS.mac?
      url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-apple-darwin.tar.gz"
      sha256 "a1c8c88ae947dbafcbe562c53616eb2a119106e60a2b9d93bd3cb4daba990bf6"
    elsif OS.linux?
      url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-unknown-linux-musl.tar.gz"
      sha256 "9915adfae64ff9709a2378491f06e22b7c3b190039ea6554853f6e9778741e1c"
    end
  
    def install
      bash_completion.install "completion/btm.bash"
      zsh_completion.install "completion/_btm"
      bin.install "btm"
      ohai "You're done!  Run with \"btm\""
      ohai "For runtime flags, see \"btm --help\""
      ohai "If you want to configure bottom, by default bottom looks for a file in $HOME/Library/Application Support/bottom.toml or $HOME/.config/bottom/bottom.toml"
    end
  end
  