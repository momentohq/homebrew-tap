class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.130.1/mo-0.130.1-x86_64-apple-darwin.tar.gz"
      sha256 "8115c4ce6634185128ecf0fb965ac5da0a48d97a042efbee82a9388ee8cd3fc0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.130.1/mo-0.130.1-aarch64-apple-darwin.tar.gz"
      sha256 "76bb5eb168558674eb28ce1b839d49a2a04dfe840851acff18385ae6372d11d2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.130.1/mo-0.130.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7af7bc0bd88ff12a4ee7eaa9893a7ef5ce8a68d175270d2e32ce8391db118603"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.130.1/mo-0.130.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "634a857aa8c088d23c4b027e4c09659d56c249fff51d2d264a2525e7925d79db"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
