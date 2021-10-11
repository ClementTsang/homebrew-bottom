class Bottom < Formula
    disable! date: "2021-10-10", because: "is now in Homebrew Core - please reinstall with:\nbrew untap clementtsang/bottom\nbrew install bottom\nThanks"

    desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
    homepage "https://github.com/ClementTsang/bottom"
    version "0.6.4"
    if OS.mac?
      url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-apple-darwin.tar.gz"
      sha256 "ab1e09b134d815c5ab0cfe5bbf010510af71905cee682549c6d72fe51f7f4ef2"
    elsif OS.linux?
      url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-unknown-linux-musl.tar.gz"
      sha256 "56e37164670dd5918d1db6682cc77e0a01cfc6c834f726c724a1d9436720c55a"
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
  