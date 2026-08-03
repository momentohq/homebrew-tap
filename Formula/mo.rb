class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.90.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "f82b7e1eb64852e4b409e24a96718356cc43482d781b33072b1964222b3d55b1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ddaa4da91320b39240a18a77c4eeff9dacf0fb98fc86ec8422a3dfecd2aaa89b"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.90.0/mo-0.90.0-x86_64-apple-darwin.tar.gz"
      sha256 "eba2d4e605d6019ba8e3ba5fab183e7e2e7112ed1ce0ef5b6797f663d1e06818"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.90.0/mo-0.90.0-aarch64-apple-darwin.tar.gz"
      sha256 "5e4e8a08a1c62404895bc1210562d59c2439373d78baf7184ea21c64f644f4c9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.90.0/mo-0.90.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "abc799d469bdb509abc8b1fd2bb051c5ca2574e4151cd45683b2dbe832b58b89"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.90.0/mo-0.90.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b130ebcb49c80c1982f06af0e9c2f0f5e1922d684f0f473a8e3ec0504affac18"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
