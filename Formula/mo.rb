class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.70.0/mo-0.70.0-x86_64-apple-darwin.tar.gz"
      sha256 "ca0dd13c3530103f02f8da3a69fcd69601cfec9ee95858f1d82fe2820904c995"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.70.0/mo-0.70.0-aarch64-apple-darwin.tar.gz"
      sha256 "b5947520013e1957bba6434fc697b5b0aa7b34d98c02603f0c854bcbc6f0746b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.70.0/mo-0.70.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67471f1ee641cf15660cb7a7fbdf406824b29184a9436e94321df78cfea35257"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.70.0/mo-0.70.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0be6f08413fea36d23c985d4e1847f1bcf93570590a25b49e5366c350ad48e0a"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
