class Tezzer < Formula
  desc "Lightweight, SSH-like terminal transport with persistent sessions and automatic reconnection"
  homepage "https://github.com/kuriyama/tezzer"
  version "0.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kuriyama/tezzer/releases/download/v0.0.2/tezzer_darwin_arm64.tar.gz"
      sha256 "adb9e53df8b8f4ae4ec7cbf4abb10159af671895ad4175715356cd80b42933fe"
    end
    on_intel do
      url "https://github.com/kuriyama/tezzer/releases/download/v0.0.2/tezzer_darwin_amd64.tar.gz"
      sha256 "ed997dadc06393cb6d718d8e3bbdd2fe9b9fec6f7f705a036d3e89aa9d1e93d7"
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
