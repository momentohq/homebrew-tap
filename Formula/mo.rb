class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.130.2/mo-0.130.2-x86_64-apple-darwin.tar.gz"
      sha256 "b197d279634167b47168cec4b925a687b7cb85c11c220e94544ee59cbde8a619"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.130.2/mo-0.130.2-aarch64-apple-darwin.tar.gz"
      sha256 "c7383eac6bea7d3aa8165668c752618252b588e96996e8af60795e0cefe866ec"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.130.2/mo-0.130.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "350a05d06dde30db04ac200d64c86a7ce7e67de5ecd187f33febaafac67afd6d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.130.2/mo-0.130.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fce7cd96ae0edc9fa32ce4ca8a1819899aa38d1230eef20aa4efa829a440ca05"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
