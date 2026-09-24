class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.142.0/mo-0.142.0-x86_64-apple-darwin.tar.gz"
      sha256 "440a8cd50b4853377a7518b8f4e389c04601b6ac022dc97d7215bf876dd3ef03"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.142.0/mo-0.142.0-aarch64-apple-darwin.tar.gz"
      sha256 "18f73cf0d79d5b4a2a41c9bdf755e7529d86e828e3207fc729b82daeefed8877"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.142.0/mo-0.142.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "03f06199e5b5aa2b2a7631599b49e7d20767097aa916dcf7e0775c5b31b92a3d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.142.0/mo-0.142.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d58b80199aa36e03d5a5584063490a514efebef1705f09abd025ae291bb6b50c"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
