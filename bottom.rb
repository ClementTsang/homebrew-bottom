class Bottom < Formula
    desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
    homepage "https://github.com/ClementTsang/bottom"
    version "0.6.2"
    if OS.mac?
      url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-apple-darwin.tar.gz"
      sha256 "7b6b85877f0f045c8fe8af27ba8e622d588337b9b2fdeec97e53ffa28e435e6d"
    elsif OS.linux?
      url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-unknown-linux-musl.tar.gz"
      sha256 "89055fd51e0ff876cf907dcd6d4d1d2bde426914ab3386aef2f11dbfd91bb64d"
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
  