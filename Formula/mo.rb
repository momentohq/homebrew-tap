class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.119.0/mo-0.119.0-x86_64-apple-darwin.tar.gz"
      sha256 "da107b62be1d77e9cc7771b889878bba45e2da9a0f9df7a56578e2d6118525f9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.119.0/mo-0.119.0-aarch64-apple-darwin.tar.gz"
      sha256 "cc627ea002e1458fd3837a38991e062df7d2f277d3970db204fa0741ec929701"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.119.0/mo-0.119.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d6d031715f6fb171a5ce42a94c9930fde028209419adeaaa94bd8df9b3acd2a3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.119.0/mo-0.119.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5736cbc2f71a33c1bd6a5958d4b9d86fd2cbeb4d2510d9f1460ce11feda857a1"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
