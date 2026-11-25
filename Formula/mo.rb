class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.201.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "f576adcaea1117c13f3529ac03f676bbd85c5bf505efd30098c0c67759ec512c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "83996f7bbae989aed55f72a669ef7df212460e2fef906d25086bca94c92f98e3"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.201.0/mo-0.201.0-x86_64-apple-darwin.tar.gz"
      sha256 "217410a9fd0ed2f7c875aad7e6324c011ee1b2816ac399abe4ea8c4eaae11e92"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.201.0/mo-0.201.0-aarch64-apple-darwin.tar.gz"
      sha256 "3cd599767b42d93b21ce3e7de6c6275778c5d4df17ecee1c204d9420f129257b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.201.0/mo-0.201.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77c180869dde260ba18fcdf9ae5fb9428d4d48ccec35de1a96b7f5e8de69c22c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.201.0/mo-0.201.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ef7d9929ae0d12c80ecca344dbfe35eb5d82e2dbba6b2a2f8921ba861cc35755"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
