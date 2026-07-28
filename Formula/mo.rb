class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.83.2/mo-0.83.2-x86_64-apple-darwin.tar.gz"
      sha256 "0952b918dacd10c447fd4f1190df7569e54c6a47c3294b2ce1e319b8d9f1232a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.83.2/mo-0.83.2-aarch64-apple-darwin.tar.gz"
      sha256 "e8a17f9539bc1a3799b008a5803098a277039b496896b3265d9613cf1f53943f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.83.2/mo-0.83.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "baf14abef1b49964da6bd7294e5b0314917b241862d14369f06becace5efcd5c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.83.2/mo-0.83.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "452e8e1410eb91eb20725d423ad7eee1143b583ed765e174b4e9bc788b05604f"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
