class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.91.0/mo-0.91.0-x86_64-apple-darwin.tar.gz"
      sha256 "7359c93a40251e66563d6d02f6eb0efe60210eebb31a0e6df1583a20cf6665c2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.91.0/mo-0.91.0-aarch64-apple-darwin.tar.gz"
      sha256 "aa6672f9c188374cc38ba9b9f109e923a1d90422e1b7cd4bec36e84ccfc6c2a3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.91.0/mo-0.91.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67bb732b18d9c6519e02b51ba6cf4f993ebdde560a1f21447cd9fc0358ea5a04"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.91.0/mo-0.91.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "70e622a65d87128b0e88bec74a3dbaf4528edd325aba282bed72f2395f100a26"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
