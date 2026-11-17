class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.193.0/mo-0.193.0-x86_64-apple-darwin.tar.gz"
      sha256 "7a0ba5885e5335b94caaf05b24db6f021ccc085b2437914966a1b63d227c5f32"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.193.0/mo-0.193.0-aarch64-apple-darwin.tar.gz"
      sha256 "8581474f5fd41e2903ea8b0a6ab441962d9cbf48329a2c6dac14419fc3d518fa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.193.0/mo-0.193.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "50c81cb57b9ee3c40736919fd004f853c4b8fbeaf037a29c30084e7c80e053d0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.193.0/mo-0.193.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16471b0bdcf1852d556723cbe665aa7ed95395cb809128ce0756ee9a1799f620"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
