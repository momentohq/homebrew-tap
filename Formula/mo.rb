class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.158.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "9d69c16f7dcb9cc8134e74a732ea65bf5b3a971836a042fa4b8f319769911be4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "da6c32da66c512644f50144946d6af5f52a6199638fdc15a40a5eb9e31c29d6b"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.158.0/mo-0.158.0-x86_64-apple-darwin.tar.gz"
      sha256 "39e42de4e2625b300dd7c5d3c6f07f7f4fe0eaf9ecf94c21255a8f4dbdab8893"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.158.0/mo-0.158.0-aarch64-apple-darwin.tar.gz"
      sha256 "53b32fc529319e488512b7be236db4045ea6bcd9aaca4ae3abfde8fa7ced6bb3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.158.0/mo-0.158.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a21ff1d1958ed03de8417f8eb9bffde09eb23e890ce2345ead788e01390765f7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.158.0/mo-0.158.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb2448c656a1653dc0fc74c18ef54c9d7974561ae9895c22d29c95343c4d99f7"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
