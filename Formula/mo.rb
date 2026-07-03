class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.23.0/mo-0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "ff9cf07fdab7c5d72077bc10d7b2db37cd5fb443ced453ded6a600fbc9d44695"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.23.0/mo-0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "ed7afec933b8cd51268de8f7bc666e77a8ea7bfb32fc4863adce9281c1daffc3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.23.0/mo-0.23.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5dfd75351a401d9cd99cdd0faac69acb8b6df895f5985011512c1b90fe61b67a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.23.0/mo-0.23.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d9d075fb97adff841fba612c4e521cf69fd4c08c897f59f55c3f28cc8f9fc9ff"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
