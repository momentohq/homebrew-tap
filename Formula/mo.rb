class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.108.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "0bb08f32c1259f72d432222c580ad56cbe33164d772474340fcca84993ee2e08"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "59390c7c4ec4d7af55d72ba36659ded22663ed6662ae9e5bad0f8b8c1597877a"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.108.0/mo-0.108.0-x86_64-apple-darwin.tar.gz"
      sha256 "efabe07a1eb85468a4a175c88932313e48b4fee1c72b7485b9985f420730f569"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.108.0/mo-0.108.0-aarch64-apple-darwin.tar.gz"
      sha256 "fa131bf45b1b9de8b48b98913389f5b4f55d9b672ca2922053a49219706841b8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.108.0/mo-0.108.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c057077072a3ac7ec75d2700cef93f951c6534254decd2a83c5ed29ae9d5adf"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.108.0/mo-0.108.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7132679704bd467b15e146f12b8aa01f141b775d4423f08f6431848093148fa6"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
