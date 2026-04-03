class Mycelium < Formula
  desc "Multi-agent coordination CLI — persistent memory and real-time negotiation"
  homepage "https://github.com/mycelium-io/mycelium"
  version "0.1.58"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mycelium-io/mycelium/releases/download/v#{version}/mycelium-darwin-arm64"
      sha256 "a70f6823977e399741ae1ef5c7b70acce247cb8b5d8e693fc2a005f7dd338151"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mycelium-io/mycelium/releases/download/v#{version}/mycelium-linux-x86_64"
      sha256 "d91e421f44a559239dbb34ed0256a06645b9082addd67bd2fdd394b47b8521c7"
    end
  end

  def install
    bin.install Dir["mycelium-*"].first => "mycelium"
  end

  test do
    system "#{bin}/mycelium", "--version"
  end
end
