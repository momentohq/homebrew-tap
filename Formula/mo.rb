class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.152.0/mo-0.152.0-x86_64-apple-darwin.tar.gz"
      sha256 "fa34a415f05264caee6dee70c07e4ac3bbb9215826c70dd5b530ac300981664b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.152.0/mo-0.152.0-aarch64-apple-darwin.tar.gz"
      sha256 "18b701b2e22061652a4e8533ab8536134a806c3e5da56b3ed67d7a594df7a7b2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.152.0/mo-0.152.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1368d0698afb1a9e64cc8d9e21c173f6bf852f0d5f3e4984f2dd45ca86360f7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.152.0/mo-0.152.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "80d22d7b01b05fd658fcbd9b0ddd015611362cb7bfe07f8e4fbc5a99f32f67d6"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
