class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.114.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "9d4ce228062fda1fde559ef6f826b61b4a30a740cb4fc8ce6f59788190cd2503"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "efd2c47d766373e434cac8412236df9a3058eea13f86de30d1e6be345fe58de0"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.114.0/mo-0.114.0-x86_64-apple-darwin.tar.gz"
      sha256 "c2d3146a06479c8bebdd854ebbe121306f02f263c687740375155bd7ed79e121"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.114.0/mo-0.114.0-aarch64-apple-darwin.tar.gz"
      sha256 "838f7db7e6f041b8d5455fb6e0e5d57c9662e3822786a2d2288f12b004c58c33"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.114.0/mo-0.114.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "abe1565548007634978b9a385396353aaf87f438b4026019c637dc18907bb95e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.114.0/mo-0.114.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bceaa48e0f98a31ccfef3391006ad9cbe3aff0cb67537e04eea3bb0312fdc4eb"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
