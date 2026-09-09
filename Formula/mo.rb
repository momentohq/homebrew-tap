class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.134.2/mo-0.134.2-x86_64-apple-darwin.tar.gz"
      sha256 "9439b7ea233ec2c4ef155e02fe9bd82fa46ac3da9cde0f58211f0eb3c45c6945"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.134.2/mo-0.134.2-aarch64-apple-darwin.tar.gz"
      sha256 "153f4d2b3c57721e11db13b81bc72632a2e4d9db7bc3fe085a8b1c8e0ad328da"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.134.2/mo-0.134.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f68bbe2aee4ab5b95a47e2bdaf40d139564fcec44849b12877d32110c77798c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.134.2/mo-0.134.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3d9bec9a728e8666400992acb176c2bb4daea182de87f10756ccff7f312dcc0c"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
