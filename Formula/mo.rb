class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.129.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "79098b2db45388c0a78569340f6c1a827e9df3bd8e8167f8f0b958c50bd4a865"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1f3ec3cbcf95bbe5f89548fdd4a675f75b8ecb428157766f4fd62d354fdfea08"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.129.1/mo-0.129.1-x86_64-apple-darwin.tar.gz"
      sha256 "d4d15c8f8f5cf2cc2843f55331383b49c239db9f680a2af08290242b339413af"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.129.1/mo-0.129.1-aarch64-apple-darwin.tar.gz"
      sha256 "ca6d77e761545da9697e130dda226f13cd9df4bae1b4c522c460a3e31455674d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.129.1/mo-0.129.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d40a16c1113c01d75ec6dc4a7a3be552b8923f6cffc23506bc7b6f6f4de63857"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.129.1/mo-0.129.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3741f66bff89829ecb31c49880a9c1a93ffaed74956ad4ea0559a90bb2f10ef"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
