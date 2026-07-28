class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.83.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "4b3b9bccc8096b931bcf7938becef6965b1eb6c9d962a0249c48d5244ae8eb6b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e0afe42133d25e016d796f526ff8e0ff48b4277a07257693c15f7689d352ad10"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.83.1/mo-0.83.1-x86_64-apple-darwin.tar.gz"
      sha256 "dbfbb7379bf19326def81838d74af8a44aa326a57378968a7c1b2c2b0c640534"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.83.1/mo-0.83.1-aarch64-apple-darwin.tar.gz"
      sha256 "708b5dc9c187e8114f70b3f2c01e6d20c6b68a3194716452caf95ed491637e22"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.83.1/mo-0.83.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5806b805a00b955b918a9bb5b0abe7565f6021e40ca80e661c91f188a5f85532"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.83.1/mo-0.83.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3fcbdad56f0c259d32778369f991a7db83695bf30531b3c5df39b65073f2f73"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
