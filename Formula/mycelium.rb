class Mycelium < Formula
  desc "Multi-agent coordination CLI — persistent memory and real-time negotiation"
  homepage "https://github.com/mycelium-io/mycelium"
  version "3.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mycelium-io/mycelium/releases/download/v#{version}/mycelium-darwin-arm64"
      sha256 "0bbc70de43099aa851884b6c48aed7b8c71f72e92201af54efd49f4a34baf403"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mycelium-io/mycelium/releases/download/v#{version}/mycelium-linux-x86_64"
      sha256 "2310caf8977bda6536eb279a68df5eda661890ca5e3a705464e3fe48a7c39520"
    end
  end

  def install
    bin.install Dir["mycelium-*"].first => "mycelium"
  end

  test do
    system "#{bin}/mycelium", "--version"
  end
end
