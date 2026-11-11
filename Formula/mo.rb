class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.177.0/mo-0.177.0-x86_64-apple-darwin.tar.gz"
      sha256 "30873a189c9e4711298c83e643bc0b3ebf87b582727b757dd9a358473d06ac36"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.177.0/mo-0.177.0-aarch64-apple-darwin.tar.gz"
      sha256 "798a998c2f1bff5dcccfa51e993cf557b1a4a5bb1a702a01bd6e69b8d0cbaccb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.177.0/mo-0.177.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19d5ec667a5b0bc1ef7a1b263bbdd132cbe549fe3652afdd57a9849a27b034c6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.177.0/mo-0.177.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5c3c957b9feb280b13cab33d12bcbe556e2872c9e595143cf4acefb1408110f"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
