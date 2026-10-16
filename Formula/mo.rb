class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.156.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "7f8496a91ec709f569302d9323e6a696f24c7e1a3f58717c5b5659d765546dd8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5ded11c43e8098334c1f7cbfa3d59d3afda0d9f947f6d9f66e59d1bf548c1be0"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.156.0/mo-0.156.0-x86_64-apple-darwin.tar.gz"
      sha256 "cc405309b7aeaa4145771b1235cd6de4777c9ed106b705faa585ce69635a72ec"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.156.0/mo-0.156.0-aarch64-apple-darwin.tar.gz"
      sha256 "12a116008c07ced37215813cdae4ec678870bf7748e6cc46a54ff0501d45f95f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.156.0/mo-0.156.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c98de740cea782e47451f145fc565a511030e9b33f7a3e663c7c8d5f12be8716"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.156.0/mo-0.156.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d6ac4836a8865439768d9dad2ba84d66c56f43d6be7cda8919bb3ccfdbfcf692"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
