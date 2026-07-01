class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.14.0/mo-0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "1dd3dabc48905a19b633040c328afee9eff4f0d0e8326244a709d43f5f25334e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.14.0/mo-0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "40ccf03b6c91d4365fcd6f740e7be40e4de7de15a3c53c3425a719807295da3b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.14.0/mo-0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0fb853a8fe2fc39a0dbe6e561fe60e6544243050a04627dc2d8c40301b9c4bd"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.14.0/mo-0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "694438681f78095caaf630d6c5728592e8e3e77020ba19f5a7b86054f030d646"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
