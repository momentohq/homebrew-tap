class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.96.0/mo-0.96.0-x86_64-apple-darwin.tar.gz"
      sha256 "faca64dde2ea787650b829163a18f27ae108f69b2a2926180ca8f5f20412c531"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.96.0/mo-0.96.0-aarch64-apple-darwin.tar.gz"
      sha256 "afedfdd13cc1f1514b45babf65501ddbf50c3e06a5f8fbdadd0f2df921c2f670"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.96.0/mo-0.96.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da2ab3faa216e187980f737250a6b5bae8fed85b1dce9d1682a841afbca28c2b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.96.0/mo-0.96.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "213543f934635fa03108e4131a0d8a582fcfe4cf3e670cac734d85282bc41b49"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
