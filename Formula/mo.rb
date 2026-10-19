class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.164.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "5530dd279d0647efa6a30a7b1688c67d2680987e0fe4208357f81b56c8d521a8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "48bcb74f419f2812e77736c4a119ae2204ae4f6abc73ce3ae78bbfdb76e47bf3"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.164.0/mo-0.164.0-x86_64-apple-darwin.tar.gz"
      sha256 "8de57ead1ceafa2a533203e7377faf1a733db57323b0288a3a44110b7d653bf6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.164.0/mo-0.164.0-aarch64-apple-darwin.tar.gz"
      sha256 "51df0a1f6603b1b10676ef3250cebb6bd305414fd5f239b42d9a0c3c3c761cea"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.164.0/mo-0.164.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28bd2cef66c5c9c022912991ee9959aa4bf3ce3d32f088660738596188cb8f04"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.164.0/mo-0.164.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a8086221f7d6bee54ef339a1e2b8be5b1ba453eae58b25c099d4801e8270e7f3"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
