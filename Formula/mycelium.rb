class Mycelium < Formula
  desc "Multi-agent coordination CLI — persistent memory and real-time negotiation"
  homepage "https://github.com/mycelium-io/mycelium"
  version "3.0.57"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mycelium-io/mycelium/releases/download/v#{version}/mycelium-darwin-arm64"
      sha256 "dbcd4cbb114869d7b99cb2dae2eaf03e4057d297eb3c61f25cbce521568ec0a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mycelium-io/mycelium/releases/download/v#{version}/mycelium-linux-x86_64"
      sha256 "e9ed829ae753758273c296fc4e8ecd44eb0e5dfb1f579050bb69b9c872143bee"
    end
  end

  def install
    bin.install Dir["mycelium-*"].first => "mycelium"
  end

  test do
    system "#{bin}/mycelium", "--version"
  end
end
