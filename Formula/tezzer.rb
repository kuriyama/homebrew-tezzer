class Tezzer < Formula
  desc "Lightweight, SSH-like terminal transport with persistent sessions and automatic reconnection"
  homepage "https://github.com/kuriyama/tezzer"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kuriyama/tezzer/releases/download/v0.1.1/tezzer_darwin_arm64.tar.gz"
      sha256 "67f5118c9b754f4b43b2f823f3f9073f535447210d3a89d946540409a8e6c0ec"
    end
    on_intel do
      url "https://github.com/kuriyama/tezzer/releases/download/v0.1.1/tezzer_darwin_amd64.tar.gz"
      sha256 "24ea70542869326dd7efcde7438b33be758a4f9183f321bcb7e4e9466e6d0db9"
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
