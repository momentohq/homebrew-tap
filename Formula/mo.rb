class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.55.0/mo-0.55.0-x86_64-apple-darwin.tar.gz"
      sha256 "237402b5763f5ace27357e688e3e89e736797286a0da39303497022d22ce9e26"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.55.0/mo-0.55.0-aarch64-apple-darwin.tar.gz"
      sha256 "ecb2f5fdf439f256a351c02d08181982e32726e7037f981ba79b19278aa4aab9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.55.0/mo-0.55.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a82c7a37c5b5b15ae3e89d9e571f6a6f21b7c40acd1722ad894dd07dd554446"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.55.0/mo-0.55.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e02589162472bb6ff997793dc4dd40bf7b88213e59b81f48731bf1c36f91969f"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
