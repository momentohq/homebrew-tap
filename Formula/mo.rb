class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.154.0/mo-0.154.0-x86_64-apple-darwin.tar.gz"
      sha256 "41f7ad7f7b048f3bdc7d41d20a720f0098127aa00a344f601e741f5ebcbc542f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.154.0/mo-0.154.0-aarch64-apple-darwin.tar.gz"
      sha256 "0f0bfe7e56010fbab40ad66645f9ad4669f18fcd166417c448317533dcb9f63c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.154.0/mo-0.154.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0426e4eca0f60bb20d53d71140d56125947860b70fa51c751372267cc9f3ba9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.154.0/mo-0.154.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bdd7045388454e49fb64ada675eabcbd3cdfe963afab5886c7c9e374a9352fff"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
