class Mycelium < Formula
  desc "Multi-agent coordination CLI — persistent memory and real-time negotiation"
  homepage "https://github.com/mycelium-io/mycelium"
  version "3.0.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mycelium-io/mycelium/releases/download/v#{version}/mycelium-darwin-arm64"
      sha256 "f40185365f4467388431444cf6f0652cdec981761df00a198c7baf9f9a7bdd80"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mycelium-io/mycelium/releases/download/v#{version}/mycelium-linux-x86_64"
      sha256 "2c3bfa3ade9ae107e5472315f986cdb358452e3105d3d2eaffe480b70dbe9bed"
    end
  end

  def install
    bin.install Dir["mycelium-*"].first => "mycelium"
  end

  test do
    system "#{bin}/mycelium", "--version"
  end
end
