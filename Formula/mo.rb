class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.69.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "35ea824d4c90e38b228a12ad907f2f5a6597374c0614cdc5018f845f771b4cb6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "994fe091b1c62365372fce7d6d19d21462e2b98a8d80d0a42bc88cb60359f0c3"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.69.0/mo-0.69.0-x86_64-apple-darwin.tar.gz"
      sha256 "f2c1408133d7070bb0d5beb39603e9498756541624a7a713888661f165157775"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.69.0/mo-0.69.0-aarch64-apple-darwin.tar.gz"
      sha256 "0a8e24244c45595d21fbcfd905144438aa0cbd3c195ccc6d2085dde1960663da"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.69.0/mo-0.69.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e12c87230faa2dba247ea6ebd77ad0828034f73794677f9eab7fb01aee09315"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.69.0/mo-0.69.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c33c1228d205601b9f62e723309e9d56697f8f0e13cc08b51a9997b59984d05"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
