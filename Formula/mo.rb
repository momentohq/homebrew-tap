class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.53.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "f6863fdc44a38c2ad35bc93848a9899057a25d44b2e1ff31d6750c5f858432cb"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4d5857bdd7ad542cbd462ff7db6a2fc10f98154d2aec14c73a6586e5f931fca1"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.53.0/mo-0.53.0-x86_64-apple-darwin.tar.gz"
      sha256 "58395a0e6619564dff4ff189a614d2652c727b39db093c280aa8711621900b48"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.53.0/mo-0.53.0-aarch64-apple-darwin.tar.gz"
      sha256 "8222700bf9e4d308812b40021cda87129c8e9a13cb5755a294c88fa9f2e9a745"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.53.0/mo-0.53.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa93afc92dcdd13babca2fd7397b251ba7114442bbede3cb78b161d87f0e38bd"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.53.0/mo-0.53.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c24c4aa8f2a6fe8197a1031c1674e19619846cc0f7cf5c67d9bd72743e6428e2"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
