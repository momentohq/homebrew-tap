class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.117.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "8d685d9e75748af6c05a5fcfbc80f7d4069bafe6be7e451388b8f3a139daf59b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ab934ce5fcb50d0103be0ea9627c8feb9e1aacfef0b46d779f66f61fcb472411"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.117.0/mo-0.117.0-x86_64-apple-darwin.tar.gz"
      sha256 "46509c1321c60998b412b6715f4ad8349cc5ef6cd622e69884eecb3b6fe27f28"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.117.0/mo-0.117.0-aarch64-apple-darwin.tar.gz"
      sha256 "ab9e6f612b728fbd29558e71ae8d7a5eab8285295157953a0dd6b3146e9cbaee"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.117.0/mo-0.117.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "20e54adfe6f9119ce4ebcf16f577a49507d5391b87fce858b4c95fe2c85dc8c8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.117.0/mo-0.117.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "461c07c1a1c85001d74660ff84cd5d741d8d2e04f6d3a0821704d9d4319b86dc"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
