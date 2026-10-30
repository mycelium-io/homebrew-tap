class Mycelium < Formula
  desc "Multi-agent coordination CLI — persistent memory and real-time negotiation"
  homepage "https://github.com/mycelium-io/mycelium"
  version "3.0.72"
  license "MIT"

  # Homebrew is no longer how Mycelium is installed. This formula stays at its
  # last version so existing installs keep working, and tells them how to move.
  deprecate! date: "2026-10-30", because: "is replaced by the installer at https://mycelium-io.github.io/mycelium/install.sh"

  on_macos do
    on_arm do
      url "https://github.com/mycelium-io/mycelium/releases/download/v#{version}/mycelium-darwin-arm64"
      sha256 "2b2291582ca216f1bbc7780558994e12652e869af18ee4b267201031ab5211b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mycelium-io/mycelium/releases/download/v#{version}/mycelium-linux-x86_64"
      sha256 "1a39a3c36b366dc8c983ae67e1ad56bdc7d0bdfb0e3b522525bdb97e4b23938e"
    end
  end

  def install
    bin.install Dir["mycelium-*"].first => "mycelium"
  end

  def caveats
    <<~EOS
      Mycelium is no longer installed with Homebrew, and this formula gets no
      new versions. Move to the installer, which on an Apple silicon Mac
      installs the Mycelium app with its own hub:

        brew uninstall mycelium
        brew untap mycelium-io/tap
        curl -fsSL https://mycelium-io.github.io/mycelium/install.sh | bash
    EOS
  end

  test do
    system "#{bin}/mycelium", "--version"
  end
end
