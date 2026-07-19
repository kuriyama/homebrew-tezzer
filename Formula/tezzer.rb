class Tezzer < Formula
  desc "Lightweight, SSH-like terminal transport with persistent sessions and automatic reconnection"
  homepage "https://github.com/kuriyama/tezzer"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kuriyama/tezzer/releases/download/v0.1.0/tezzer_darwin_arm64.tar.gz"
      sha256 "b1845654814a8b47c57f138f734c9cc148e85a96df2f2da7eda57842887352a2"
    end
    on_intel do
      url "https://github.com/kuriyama/tezzer/releases/download/v0.1.0/tezzer_darwin_amd64.tar.gz"
      sha256 "cd26c85d5166caca8f0a912690e27039f87a57c92e24f1ab04972d3b1b5785de"
    end
  end

  def install
    bin.install "tezzer"
    bin.install "tezzerd"
    bin.install "tezzer-ssh"
  end

  test do
    system "#{bin}/tezzer", "-h"
  end
end
