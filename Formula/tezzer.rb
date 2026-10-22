class Tezzer < Formula
  desc "Lightweight, SSH-like terminal transport with persistent sessions and automatic reconnection"
  homepage "https://github.com/kuriyama/tezzer"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kuriyama/tezzer/releases/download/v0.2.2/tezzer_darwin_arm64.tar.gz"
      sha256 "5c761fbe3d2f6f0528a6e7cdd9dd24b40953aaa21f680beb06aa8d0fc9296cee"
    end
    on_intel do
      url "https://github.com/kuriyama/tezzer/releases/download/v0.2.2/tezzer_darwin_amd64.tar.gz"
      sha256 "016e56f792db84d77705acceea09d78eca85968dc641b1f8ccd6fb005ae8a092"
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
