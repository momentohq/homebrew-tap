class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.45.0/mo-0.45.0-x86_64-apple-darwin.tar.gz"
      sha256 "ac3b7ffa83d8da18e0f327451f5af13b33cccb6e40379985d3a90b79d4f8a15a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.45.0/mo-0.45.0-aarch64-apple-darwin.tar.gz"
      sha256 "b629e9c2f8cb395411384afe6feefc082d481b7ca043e631e32ee4a9a1601e11"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.45.0/mo-0.45.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0deca06dc26338fc1e41c375730e2c231301a4f8762f0c01d70a42d610188a6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.45.0/mo-0.45.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a6c44710d817e0ba35cf7354fd165d38f430414d399e9e645773994dca6313e2"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
