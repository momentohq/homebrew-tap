class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.84.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "e86b02003ca781e690075d1b6416613727f3d48178dbb36ce0484561cba4b4a1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "420f3af07e8e1bc6e71ce7933360ec9f77d4e1f31d1757477d809a9f41f25309"
  end

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
