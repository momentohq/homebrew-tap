class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.17.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e0cd75a2433ee2f198510f1409bc2475030df585188fb702397780ea3f176a40"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "2ae1d44bf6dcd42c2a39cc84cda684b2f64dbd5fe8b4fa2c3e2dd8d87f102e72"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.17.0/mo-0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "bc63a524026a41032ee140a414b57c2222ba6603f7ac7161c9255528f333551d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.17.0/mo-0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "681ee72a47f9b12ae33c86e941ae83daec11ce4b79e4de9f8a9884ca196c1426"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.17.0/mo-0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19db8ad3a4c5725cfc3a8d96bfaf35f7970b6511e3fb7d96bb4cdf73d57b61bc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.17.0/mo-0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ca68c9cd7f7d39482d3785da531322db67e7ba9f019561da73df5dee23704698"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
