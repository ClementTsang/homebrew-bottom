class Bottom < Formula
  desc "A feature-full and cross-platform graphical process/system monitor."
  homepage "https://github.com/ClementTsang/bottom"
  url "https://github.com/ClementTsang/bottom/releases/download/0.2.0/bottom_x86_64-apple-darwin.tar.gz"
  sha256 "91c014e7b141a14038caf662b437dfecdb75ff4f8ef4f2c97b0833d54a300dd8"
  version "0.2.0"

  def install
    bin.install "btm"
  end
end
