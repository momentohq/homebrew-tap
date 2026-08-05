class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.97.0/mo-0.97.0-x86_64-apple-darwin.tar.gz"
      sha256 "5c97a4da50808c856fe4e4120da5b87af6c4507a4d5a97b36d5444cd8c009605"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.97.0/mo-0.97.0-aarch64-apple-darwin.tar.gz"
      sha256 "c68913ea78f34dd4bd13034a08300fcdf411ef9db4d8abacfcddd66e71db5dd6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.97.0/mo-0.97.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c2619f7a9e0e32c1ad1665d9776eb4046ef314d006e09100a5f141a21a2ab59f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.97.0/mo-0.97.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08aa09b1b845ca4c0357befa9f8b80b5dbdcfe8e8aaec9abed5ea9037c5a3d63"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
