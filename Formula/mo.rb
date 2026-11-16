class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.191.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "180492a611782af18b90cc5c5b9818faf1742860c9e6811868c8d66f203011b6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9523c665b03d863e50a43eae568f6db24f346466a4479bab930a586eee29ff2d"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.191.0/mo-0.191.0-x86_64-apple-darwin.tar.gz"
      sha256 "e041aab51d9fb252a5780aeaf2c808e4f95f23f4f2061c61ca0e05ae1eb24482"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.191.0/mo-0.191.0-aarch64-apple-darwin.tar.gz"
      sha256 "cb3ad4947ba7619e446add8144b28322ba4a3bb6af661ce3858bbd4678806777"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.191.0/mo-0.191.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c1ea3c11f051c2a41ec0bb28b14f32b6d988414e1d9c8d5f847439027de9780"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.191.0/mo-0.191.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bfd898c5f96a3fbdc91499834999c1878082e4da769e8339fdeffac37052abe5"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
