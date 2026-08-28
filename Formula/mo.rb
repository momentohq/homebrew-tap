class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.127.0/mo-0.127.0-x86_64-apple-darwin.tar.gz"
      sha256 "c3b6161a89da1d97195f668d76530937d4e6b4122ac07808ad85b575d923b528"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.127.0/mo-0.127.0-aarch64-apple-darwin.tar.gz"
      sha256 "bdea4b29d6e4c73c138a2faa4672f85623a49dbb051d841c6cc7c3d04e5eed43"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.127.0/mo-0.127.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74920484fe90e709037eee2e923fe8ad7ebb81e1d4d9261e27f7ae40c1ba80cf"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.127.0/mo-0.127.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af1e1ffb22c8e12b1405c2d257a8749751b616e6deda73de9214c0bf72107c05"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
