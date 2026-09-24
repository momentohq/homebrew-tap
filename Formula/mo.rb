class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.144.0/mo-0.144.0-x86_64-apple-darwin.tar.gz"
      sha256 "5d30f5e797b6c857a6c6f5966a662af9cfd1e681c21ccd8cbb8603b1765a348e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.144.0/mo-0.144.0-aarch64-apple-darwin.tar.gz"
      sha256 "3c475f590a42ba88c62d524c89391aeb54680ad30fe6e2c8b430da6f8cffe2ae"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.144.0/mo-0.144.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "129a26984f1d868626001ae1456cb4c19b67f0062e1b9dac8c47a70e49ac9d91"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.144.0/mo-0.144.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "25bf41bb0bb32a651feebf0b25f81e298a27022e9b3d658cb6e649a3feee80ac"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
