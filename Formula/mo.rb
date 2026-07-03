class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.21.0/mo-0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "9f058998b7c1e9736cb706e18dd6e3ecb0fa0479c2d24eee081de926b45c559d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.21.0/mo-0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "6ca1355182565face276aea229b283681bd7f54274b4914ca5177a92bcb971b8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.21.0/mo-0.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "847058778003fd5364081356b3ccd464afeba893a02e483a2371251e3e3c7923"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.21.0/mo-0.21.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "41eba43d601b65fa0da3f15f888d910239059f24739650ea72a4fa3f2ce02f6e"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
