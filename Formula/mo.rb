class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.125.0/mo-0.125.0-x86_64-apple-darwin.tar.gz"
      sha256 "bdab84dbde8844be48c87240f5c4e744a1aee67a323b00cf73ada6a10ada9aec"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.125.0/mo-0.125.0-aarch64-apple-darwin.tar.gz"
      sha256 "da69eca68fdf148ac8ab231b562f3c76b707895f9b643dd9bd0a638836470a83"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.125.0/mo-0.125.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f155d0ad69cb5bf16a60b77636713b02ecd76e6d73b6ef69e722909f6d6a895"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.125.0/mo-0.125.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1f9223cd7813554a078e7b35635e2aba6acad5351944f58b13fc9d3e888ca889"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
