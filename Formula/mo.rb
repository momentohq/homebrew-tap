class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.190.0/mo-0.190.0-x86_64-apple-darwin.tar.gz"
      sha256 "349a25031537600ee0e91eb1592f793d55ec36df75ece1c1cbefd78e4e3ad9d1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.190.0/mo-0.190.0-aarch64-apple-darwin.tar.gz"
      sha256 "aa7e2f20a0813290b2738d21f406878e144c8f978ae5f86f12729511a392a022"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.190.0/mo-0.190.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f8997f8188cfcc76ef81de5aef0b1350d49bc3ecb33c2468bf2f84ebb9661cb"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.190.0/mo-0.190.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd9f59cb2c12f6c339385c9dbe287d2c19eb2f508a13f2e14b7c697fa43e13ac"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
