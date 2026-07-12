class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.41.0/mo-0.41.0-x86_64-apple-darwin.tar.gz"
      sha256 "c2e0bc967c4d0c6fafc1f598231746985d108bd6716f120381fe5ef5804f81b5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.41.0/mo-0.41.0-aarch64-apple-darwin.tar.gz"
      sha256 "e72cbec29911cab1f0b07a8ba60cfb49f1f19703f4d805ac1b493519156b9fc3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.41.0/mo-0.41.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49ee566bca2849831ebd70cc033168422c9a6f05b43a84258f60d5146cad3f7b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.41.0/mo-0.41.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5490253324de0310457a015f0ed32f2342051e09831cfe9c80e53e66ef8202da"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
