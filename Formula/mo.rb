class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.133.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "39f6907110fb76726d258029d5e746f5e827d3fae56c098ed9f4fe6f16fd696a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c231e5e66fed0cef76b60ccfc40dd0a968e4850a3ece7430bbad7817207a2301"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.133.0/mo-0.133.0-x86_64-apple-darwin.tar.gz"
      sha256 "8ed50a10c09ffe9d399ee03378272e11cb3b4b204115f4b5f960d0aa1586a1c8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.133.0/mo-0.133.0-aarch64-apple-darwin.tar.gz"
      sha256 "80a625439f6ca962e393e8ed91f18d6bd04d19c6ec97c63a16c8a553f856105e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.133.0/mo-0.133.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "315986d7e88f5ab96bed2e1ec3bcb8830312afcf3f3d7ccfaf69aa4fe7530641"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.133.0/mo-0.133.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8b94370cfbc4750e7a2eb07d9b65f452599c566c5300710626278b4ce5596a41"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
