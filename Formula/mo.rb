class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.120.0/mo-0.120.0-x86_64-apple-darwin.tar.gz"
      sha256 "22273fb5f0dd5f54a120f2fba0947c3c8ea27c54a8b611e0c96344fa6da9a214"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.120.0/mo-0.120.0-aarch64-apple-darwin.tar.gz"
      sha256 "15b9115cf3782985793fdaa61c90ab208c2c46a7fbba46859bea49ff9a84893d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.120.0/mo-0.120.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a0d484f9a144aef6b0664d67dcc2f0819b767b0dc53755e70091666e37aa112"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.120.0/mo-0.120.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "43fdfa92596ddc0ed7fc9f5dcaad37223bbc7e4d2beef8dae6d37253f3ec67c2"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
