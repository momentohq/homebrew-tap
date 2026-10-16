class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.157.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "449b2b84a3e5374976adca210f5dc112270e7e07e778362eff6776cbfe1dbb96"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9a2dae39c6d37a190eceb170b0e271d796587ec0e9d63caf4bf2d39f2027db4f"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.157.0/mo-0.157.0-x86_64-apple-darwin.tar.gz"
      sha256 "93e811ac338ee5a74ffa3537ec7f24093d89dd2ef50a04c4be39f6db9cd92b15"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.157.0/mo-0.157.0-aarch64-apple-darwin.tar.gz"
      sha256 "d2abf94e2863ec7c4b4c785078f3c19db698e00f1ff8e341a61bd4e23ff92a53"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.157.0/mo-0.157.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "32cbf94d1dc3fc108bb6f22921c135a76e7f5cc690fd1de3b3f1f6e70a808e30"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.157.0/mo-0.157.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cfc6485faba8718bb073709be0f89703fef2a3790b33b8acb82516fe7a9f9042"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
