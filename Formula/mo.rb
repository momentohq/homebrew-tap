class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.126.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "0b0c3ebd79cb3bc268e01ed1aa02b31cc71d4729766fcd90d8e1163209e2c457"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "92372badfad11c4a54fb547e2c4930f55acae896b1e26dcfe4b1b1bb9ebb80a6"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.126.1/mo-0.126.1-x86_64-apple-darwin.tar.gz"
      sha256 "c50c0b61bc278d7c2d8930c6b62236e46bf1c5b10cd50cad7b6fdbebfd5ed7a4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.126.1/mo-0.126.1-aarch64-apple-darwin.tar.gz"
      sha256 "cf24555235ab222e11034bd0b6d924a32cfb24fa67cf5a94381025b130ddd25b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.126.1/mo-0.126.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2903cb2558bdea28cce36f039983bd59059322267c6e08ab53c61dd32bee9eb8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.126.1/mo-0.126.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b1f1d55237197dbd93ae96bac3c68c2a2a5a795c5de4ebfa5552d4e82436117"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
