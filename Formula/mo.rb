class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.197.0/mo-0.197.0-x86_64-apple-darwin.tar.gz"
      sha256 "4ee8a88b741762ad6b70d78b29ff1bd1515429c9a85cafda0188a65624448bf5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.197.0/mo-0.197.0-aarch64-apple-darwin.tar.gz"
      sha256 "4d948f1dcfe6fbee627ddaa1ead6a0b332f0b1ce10481816139339ae03e7e398"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.197.0/mo-0.197.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "05b61034a372899d178bbfb0b924c65a2fc5439575fefb412278fe993c272ad0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.197.0/mo-0.197.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aad6849fc8b15c3d9b127f3377e439242a62e52ed9559462a920411e18023806"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
