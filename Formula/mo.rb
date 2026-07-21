class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.66.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "de3cccfcd987e81ca739c4e84d289ad78e4068653e0d221a4151652e9f34675b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9ad946a9f6d219fe608d1bee318e3ca3766cefb54684008e49729fc450293973"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.66.1/mo-0.66.1-x86_64-apple-darwin.tar.gz"
      sha256 "8260b8f58cce97bf5f80e2080d3001f129995ceca05357c0250dabc2109d128f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.66.1/mo-0.66.1-aarch64-apple-darwin.tar.gz"
      sha256 "11f1aced3903ddf1398b188e9b25bd6c2e5789dd5e1c5daf5140efd8d85b6fb5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.66.1/mo-0.66.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a45d002db311b28368568eafae29cf003bd99b796cbe4ea6cf8a86e7ef3e8a30"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.66.1/mo-0.66.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d898b8935ef21ea4300f2ba8b47360ad52f4248c84fe8a5abba831ff99f095f"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
