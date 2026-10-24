class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.169.0/mo-0.169.0-x86_64-apple-darwin.tar.gz"
      sha256 "907247b7c72c558ba68e3d63eee0f3a8eeb31dfe1340d24943f330071377bdcc"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.169.0/mo-0.169.0-aarch64-apple-darwin.tar.gz"
      sha256 "33ae7523573386311300d8bc3590e5f95443292e06b9373f9e575bd0a15231fc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.169.0/mo-0.169.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8900dcbaa514d9c4f2fc9ad5917fe3c6e70ec504315d83985c3b038e7aa707b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.169.0/mo-0.169.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9117722aa939913dcb677d0d439dc7f874f054be352038125ed26149a8c6d37"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
