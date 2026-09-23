class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.141.0/mo-0.141.0-x86_64-apple-darwin.tar.gz"
      sha256 "2c818c5ff047447b3bf790d94bc9e219f6f6091ddbfbf45184d25f073b56f853"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.141.0/mo-0.141.0-aarch64-apple-darwin.tar.gz"
      sha256 "d322e6509e4feeafa59ab105a6d284aeb710e42e46a5284b1e13c8c6643f1495"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.141.0/mo-0.141.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bed2610310e4c7c056d9a433c9dbb2fc2a66da8b1d320685d393472ab990ab37"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.141.0/mo-0.141.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "da40b7dfea4b75f5e390ca4ffa08245abe027e3a91d9d743ef728cea555288da"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
