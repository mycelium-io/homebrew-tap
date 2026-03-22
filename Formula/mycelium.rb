class Mycelium < Formula
  desc "Multi-agent coordination CLI — persistent memory and real-time negotiation"
  homepage "https://github.com/mycelium-io/mycelium"
  version "0.1.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mycelium-io/mycelium/releases/download/v#{version}/mycelium-darwin-arm64"
      sha256 "4e899bd4a5c3f1cc3f5d880d9986c0b0def8fededa6d7dfec19118625332756d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mycelium-io/mycelium/releases/download/v#{version}/mycelium-linux-x86_64"
      sha256 "e3e18147375cc11520e28ef00a41e93016806f55df281a3ccb731faf2aedec66"
    end
  end

  def install
    bin.install Dir["mycelium-*"].first => "mycelium"
  end

  test do
    system "#{bin}/mycelium", "--version"
  end
end
