class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.196.0/mo-0.196.0-x86_64-apple-darwin.tar.gz"
      sha256 "782d1ee9a8c6128d3e88e6593e37e864cbea63c7bfffd23a4b350c767b158270"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.196.0/mo-0.196.0-aarch64-apple-darwin.tar.gz"
      sha256 "aee85ad090bdaac715d3a2122b47d076c4eb7b226780e6d5ed15056319a63e16"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.196.0/mo-0.196.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db09924c6f137fa7162d19919a3939cab9f0024f877e413ff3b16c12f3fe68c8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.196.0/mo-0.196.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "486d804c820df8e7d41d06ef81542bd1626aabcab5f73e8bc339b786cc5b5ba1"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
