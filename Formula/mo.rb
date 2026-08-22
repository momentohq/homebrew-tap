class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.118.0/mo-0.118.0-x86_64-apple-darwin.tar.gz"
      sha256 "99601efe81075a919788faff0c5aa8a6354f4d01fd1bcf05161a2bd293f37be9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.118.0/mo-0.118.0-aarch64-apple-darwin.tar.gz"
      sha256 "d9df08507f695570a33b4cd5f02829b9435a8346015a7e0be8ffc1d9c105bc44"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.118.0/mo-0.118.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "763e115712fb2016f74a30aa24940a9f296d8d5c52c7f7d0ac1ae62821e3cd67"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.118.0/mo-0.118.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2f42d539234f137bce799d87a3217693723ba3a6033f2954ff13ef26997e80a4"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
