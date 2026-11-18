class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.197.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "9a1235fcbd3b266bb33fe4371369d8eca081f109d88e069617a962c83d44db8e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4cf25d6d93491da02ab96a8586fc46661fac52e07aabdd23b4922df087169d57"
  end

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
