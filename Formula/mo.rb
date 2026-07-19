class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.57.0/mo-0.57.0-x86_64-apple-darwin.tar.gz"
      sha256 "8008b54156f5b0f4abf9e7ec0f26f8c94437c8ffc0e29635acf50e73019b4e0a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.57.0/mo-0.57.0-aarch64-apple-darwin.tar.gz"
      sha256 "3ecaa1ef5e9922b7c3c3037fe14ef3ed9b44466c8966145518561d19d2c62725"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.57.0/mo-0.57.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "804bc8235c26811a73b6452b1b974cd2eebeefafaae8bcb7e6c3c76f7a5487eb"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.57.0/mo-0.57.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ace3f723e1719a842ff981aaa6b04f6ae4ebe8effbdfddb8ac2dfb490d13cf47"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
