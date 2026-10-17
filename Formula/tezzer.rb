class Tezzer < Formula
  desc "Lightweight, SSH-like terminal transport with persistent sessions and automatic reconnection"
  homepage "https://github.com/kuriyama/tezzer"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kuriyama/tezzer/releases/download/v0.2.0/tezzer_darwin_arm64.tar.gz"
      sha256 "bd9e2121331d8f5b8b987f8cdc31fc99cddfdb8da3342067130b8e786f0ae24d"
    end
    on_intel do
      url "https://github.com/kuriyama/tezzer/releases/download/v0.2.0/tezzer_darwin_amd64.tar.gz"
      sha256 "d0ce2c5ae4eae4673f0e5cf0c20464465553f9e25ecf4058b26d5f5b7c0c6606"
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
