class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.28.0/mo-0.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "a7fd9ba1d53101405b24323dc7780c67a75a45c457f6d0131c7f8ef36fcd62c5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.28.0/mo-0.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "c6366bb2bc9b19f2d73ae64cfbd037571a21fa72400380daaaaf1fdc942181bd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.28.0/mo-0.28.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19458b030c0b21568f514f6195785115fa599429533fca181f7c14eb4af96c3e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.28.0/mo-0.28.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "94310b039bbeca00e42a92a096471d071923c6cc079fc8d942d48accb0b577c8"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
