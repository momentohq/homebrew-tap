class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.131.0/mo-0.131.0-x86_64-apple-darwin.tar.gz"
      sha256 "4eecaba5ac5aef95ebe8524c13494d1c53243fa2fab612d6aba9ba2d5f1e6460"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.131.0/mo-0.131.0-aarch64-apple-darwin.tar.gz"
      sha256 "d327cf9dfb7eefa42380d8a81cf6b724a8985ef32515cf8674054d5d85ee5e98"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.131.0/mo-0.131.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40bdb53c4eaa42df728052af11eede1474fabbd12e86d7a21845a2bced505df8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.131.0/mo-0.131.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f9241f5fe6657c6e7cff0fd51dac6839918b44bbaccc4d952a5b635f66c51fe"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
