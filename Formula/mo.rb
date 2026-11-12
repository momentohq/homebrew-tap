class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.181.0/mo-0.181.0-x86_64-apple-darwin.tar.gz"
      sha256 "0c98c5d01fe6c377c03f7998df95d0471bd708ef3e485c8de57ac97d370b4f81"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.181.0/mo-0.181.0-aarch64-apple-darwin.tar.gz"
      sha256 "95a677e4d2b34f35c0a27fe2e61772b4c78e5565cd4783657195e6cba05441e7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.181.0/mo-0.181.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6dc216be7dfb2526e1b61133deb27d40bf3b29b8cc5fb8b1d67d6bcac9cd6830"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.181.0/mo-0.181.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "99f6a43bbaae7533bad6825bc45adda8b17a155bf0043a166dc03feaca58a013"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
