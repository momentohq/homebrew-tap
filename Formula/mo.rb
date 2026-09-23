class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.140.0/mo-0.140.0-x86_64-apple-darwin.tar.gz"
      sha256 "4644b31ebd62cc6877484b274d132750b5230bbd6e4a4338f2ae867e798d3e75"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.140.0/mo-0.140.0-aarch64-apple-darwin.tar.gz"
      sha256 "94e6e590fd9dc1a820dc73453ea6fe2c4e759c3730b6a452cb04cc6d70d10f97"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.140.0/mo-0.140.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "71c647542a4d77a0df124470c9aed065ab97f1f833684d4f3c82631dd990d1d4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.140.0/mo-0.140.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "493a9f4281c808a2e0d2927c21731dacd65b30b1fcb2813dcb85147df3548423"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
