class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.64.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "7e3e0106f5a45c9a48c37a647f0277c9d6879537929b72a7fd1a3c02bfd30cb7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "84c50d8f27216b02957c6b58585dfb7800f3c5a7a1878bc14b6181b1b91ab785"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.64.0/mo-0.64.0-x86_64-apple-darwin.tar.gz"
      sha256 "e99f39aed8609f4199c89a26e7dbe3d9a5775ea9c5329a04a15a7c83854b7b99"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.64.0/mo-0.64.0-aarch64-apple-darwin.tar.gz"
      sha256 "fecff07074942e588cf14fab3c37af8595d11f57b0fcf77c26382f2b39cf0e37"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.64.0/mo-0.64.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c0a42621ec404b087908076770f699fa6e614d8aedf64d898409d83f61229f3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.64.0/mo-0.64.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b827361fd0cc662811132be901fcc57508f290f5ac34fb0158ba8fa65037cb02"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
