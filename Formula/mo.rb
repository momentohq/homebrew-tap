class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.101.0/mo-0.101.0-x86_64-apple-darwin.tar.gz"
      sha256 "39788757d17b820d1c9695c0ebcd4339e0aa4bbb0f219819b9314818de313d01"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.101.0/mo-0.101.0-aarch64-apple-darwin.tar.gz"
      sha256 "bc406026940ac78f4c1b3757b8ffca59bff1f4ddd3a3fa85ff98e1b39216f6ec"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.101.0/mo-0.101.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58751fdc93c8a70ee8056c2b0f15c7d5b23ed5cd1c99f2a098540589fe7cc030"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.101.0/mo-0.101.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7cac75f46790a1a7492995141502e536cbde04da80bdfa0adb37f19d064f414c"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
