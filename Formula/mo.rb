class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.84.0/mo-0.84.0-x86_64-apple-darwin.tar.gz"
      sha256 "0a39a49e18fdbead8e684550181ce70a4e8f979df883b681d3131798b5265ebf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.84.0/mo-0.84.0-aarch64-apple-darwin.tar.gz"
      sha256 "6766ca8c9bf73f85ac2baffceb57a1ce27a731ad326c377fb967438ec9dec5d4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.84.0/mo-0.84.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59421ff90a66d97a1fc0e0e5ed0d01492d99b0a4f7a039e92caff9ae85880340"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.84.0/mo-0.84.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe6b7f71dee70a7f154e1efc4a9af0b9855d500b9d41c7beac5d9456f1a4d8cc"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
