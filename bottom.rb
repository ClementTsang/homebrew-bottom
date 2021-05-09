class Bottom < Formula
    desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
    homepage "https://github.com/ClementTsang/bottom"
    version "0.6.0"
    if OS.mac?
      url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-apple-darwin.tar.gz"
      sha256 "81bf62ffd7cbaca4573bd5b1c5d4a75db1c740f28ead628faa2df2f2c6c0d317"
    elsif OS.linux?
      url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-unknown-linux-musl.tar.gz"
      sha256 "f4dba615118ea1238e5c61c67b4475a4d00bb2518e7eb1f0c2dcbbfac72e4532"
    end
  
    def install
      bash_completion.install "completion/btm.bash"
      zsh_completion.install "completion/_btm"
      fish_completion.install "completion/btm.fish
      bin.install "btm"
      ohai "You're done!  Run with \"btm\""
      ohai "For runtime flags, see \"btm --help\""
      ohai "If you want to configure bottom, by default bottom looks for a file in $HOME/Library/Application Support/bottom.toml or $HOME/.config/bottom/bottom.toml"
    end

    def caveats
      <<~EOS
        Note that bottom may require elevated privileges to correctly display information for all processes.
        You can do this with `sudo btm`.
        You should be certain that you trust any software you grant root privileges.
      EOS
    end 
  end
  