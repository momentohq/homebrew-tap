class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.188.0/mo-0.188.0-x86_64-apple-darwin.tar.gz"
      sha256 "63359d362dbe046e2041fac79d228d1e05981a3762f540c3aad58abd8040c165"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.188.0/mo-0.188.0-aarch64-apple-darwin.tar.gz"
      sha256 "f8e090cd4e243181a5cae674060a95d60a32c788677b27dea4d8e8dae5349aa1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.188.0/mo-0.188.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1fa72e7d50b7c0250e569c229436d61fefc8c95db8a9f22d8ad7a1698bb2d6a9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.188.0/mo-0.188.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6ffebff71f3e06b7fe9cbdf2b69b5153e947977dc1985b057e71ec1d765746ca"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
