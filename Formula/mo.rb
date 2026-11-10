class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.176.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "be8cf1a849b87de3092656d9a88764bf6f67f24f3c8d5a1acc77399c495b6278"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e5d8dba685fac04891554a1523d9282db41ab710347cc25f4e8231740926da5f"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.176.0/mo-0.176.0-x86_64-apple-darwin.tar.gz"
      sha256 "1bcea854f1c65b4262ef0c2583bcd1cddafe6aadb5b8057cb6e3bf53a2d14106"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.176.0/mo-0.176.0-aarch64-apple-darwin.tar.gz"
      sha256 "b08fa1f519090047263815168cf6c0468f4caeba43ca5f6546f5c1de792ab2ce"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.176.0/mo-0.176.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd5729926009f7087f9f526bcc8e4c9c479f0ab0480c24b50f397afbd202ab0b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.176.0/mo-0.176.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9ca39e65f6a09921621524ad8872776628a13d43b413d01781c3d9e1dcccf00"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
