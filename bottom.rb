class Bottom < Formula
    desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
    homepage "https://github.com/ClementTsang/bottom"
    version "0.6.3"
    if OS.mac?
      url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-apple-darwin.tar.gz"
      sha256 "409bf35a9f4527ab1525ba711417d21a588bf6d1d3d5db4c5496fc47d56c642a"
    elsif OS.linux?
      url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-unknown-linux-musl.tar.gz"
      sha256 "e8bdd8bc1b796299c92974b6ded7d1b5553a1528670f18af54c4fefcc1a9313a"
    end
  
    def install
      bash_completion.install "completion/btm.bash"
      zsh_completion.install "completion/_btm"
      fish_completion.install "completion/btm.fish"
      bin.install "btm"
      ohai "You're done!  Run with \"btm\""
      ohai "For runtime flags, see \"btm --help\""
      ohai "If you want to configure bottom, by default bottom looks for a file in $HOME/Library/Application Support/bottom.toml or $HOME/.config/bottom/bottom.toml"
    end

    def caveats
      <<~EOS
        Note that bottom might require elevated privileges to correctly display information for all processes. You
        probably won't need it though, there are built-in methods to avoid this need.
        If you find you really do need it, you can do this with `sudo btm`.
        You should be certain that you trust any software you grant root privileges.
      EOS
    end 
  end
  