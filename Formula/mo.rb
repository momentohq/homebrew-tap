class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.132.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "474fa0e27d2857e68d9cfb4a8a16a826499b4e6913de0e73b101548c9e3413d6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e154a9712ed7a3047787c8bcf5007cf02229027afb96c929f1b9048017355daa"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.132.0/mo-0.132.0-x86_64-apple-darwin.tar.gz"
      sha256 "acb271bc3dead377f46b6030f20e3c1f8a6225e1c0a8c61e9cb9763f9af63904"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.132.0/mo-0.132.0-aarch64-apple-darwin.tar.gz"
      sha256 "20a64963892c73b8199e7f3575908ee53191321fb3b176cf43a3fb39c6fb8cae"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.132.0/mo-0.132.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b8b9267e124e33ce15bea7d4cac19f79e159d3cc65ddba5859a30ee62deef430"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.132.0/mo-0.132.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9bea0b9aa2324664e29a0dc9d70feb8a1a0c71eef85235635d6d32b3254efbc8"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
