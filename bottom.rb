class Bottom < Formula
    desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
    homepage "https://github.com/ClementTsang/bottom"
    version "0.5.2"
    if OS.mac?
      url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-apple-darwin.tar.gz"
      sha256 "927e3405032286e158e09ccab3934196d935b57b74555d539e60f72f942b0303"
    elsif OS.linux?
      url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b44f4a48431ea4931cd618a56ed036a994b503154d2a4adca267c686394a7a0"
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
  
