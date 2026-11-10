class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.175.0/mo-0.175.0-x86_64-apple-darwin.tar.gz"
      sha256 "e2b8de1a1aab1608802a00b3d4c2593c51082f7a5d648a42a7dd102f5cce2f44"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.175.0/mo-0.175.0-aarch64-apple-darwin.tar.gz"
      sha256 "12b3ac6ba6f57bdfb83c6e06cc162caa774ba27e9b7c079e79b579cc97129307"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.175.0/mo-0.175.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b90ead60f8eecf33682f4600cd759cde2ca70417282a1ab0816e68b09875bd65"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.175.0/mo-0.175.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "61a261f03ec13bf658d2907b98f0c96b4200de66911ce9bc3578d395c92d455e"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
