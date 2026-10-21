class Tezzer < Formula
  desc "Lightweight, SSH-like terminal transport with persistent sessions and automatic reconnection"
  homepage "https://github.com/kuriyama/tezzer"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kuriyama/tezzer/releases/download/v0.2.1/tezzer_darwin_arm64.tar.gz"
      sha256 "4e04014fbdc175faebba56a431b7635d19ccd1cf424202a93194269c5f641d94"
    end
    on_intel do
      url "https://github.com/kuriyama/tezzer/releases/download/v0.2.1/tezzer_darwin_amd64.tar.gz"
      sha256 "70abc74aad0829fa4a25687a275584f50f060ea689e8b8a66e59efc2047d685a"
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
