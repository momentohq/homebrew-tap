class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.67.0/mo-0.67.0-x86_64-apple-darwin.tar.gz"
      sha256 "19a1594b34a9511212fd26e795718ec127201044f24a0ec54922f6558d6873ee"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.67.0/mo-0.67.0-aarch64-apple-darwin.tar.gz"
      sha256 "36fc9ce210849db45c8e823e25822a94bdf7a3ffa0f03db13ba3ff4f8e755728"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.67.0/mo-0.67.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2984494239948b982c329ef81a20f26c42970d64b0fa9be44c9d6c2e4f9f4951"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.67.0/mo-0.67.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7357005a31b8cb71af3e1e65de857cf4aebd5b5cfbb6375c2920fb9353b59459"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
