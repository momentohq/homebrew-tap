class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

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
