class Tezzer < Formula
  desc "Lightweight, SSH-like terminal transport with persistent sessions and automatic reconnection"
  homepage "https://github.com/kuriyama/tezzer"
  version "0.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kuriyama/tezzer/releases/download/v0.0.1/tezzer_darwin_arm64.tar.gz"
      sha256 "6138e7cf9e7c78b2ac64973b3bbc6bd9a5caf26c852d9ec4c2f82bb9f0b77afb"
    end
    on_intel do
      url "https://github.com/kuriyama/tezzer/releases/download/v0.0.1/tezzer_darwin_amd64.tar.gz"
      sha256 "0b18dcd5507598e94889ebfe0d2bc33a00e3f0193262811d9c557dd3cd2fe546"
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
