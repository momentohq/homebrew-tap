class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.113.0/mo-0.113.0-x86_64-apple-darwin.tar.gz"
      sha256 "7a2e321ba90cf06a104d62dc735f48726a8a2fc0b23bc07d500c14fc115a9817"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.113.0/mo-0.113.0-aarch64-apple-darwin.tar.gz"
      sha256 "fd40d4bf08a4ee5e0f72ee00ecaa6cf46340ad1497aa66fad1d4b9686e08e307"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.113.0/mo-0.113.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59bc12ebefa0b8f8e8bbe9d758f1d42ee0b675bde3873a94ff95cbbae3b2565b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.113.0/mo-0.113.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa3e4326271170c0f8e15a1dd8cc6f2e543ea4965bad214c194a8000b88c244e"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
