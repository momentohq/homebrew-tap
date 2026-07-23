class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.69.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "dbeb844217614b0b43e7e9e8886973aff6335adeb54a93f3fcf863001be3a623"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "37b3807914e73ab536f30ab6ab8f56055e48b92ee82933a250f5d24f8f51db07"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.69.1/mo-0.69.1-x86_64-apple-darwin.tar.gz"
      sha256 "af75ee7d2c7f1ebc634bc0d9c7c4c7599923fe26a32b3d966c3109b9c04f04be"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.69.1/mo-0.69.1-aarch64-apple-darwin.tar.gz"
      sha256 "732690dc6d55d80aada090081492df1aac4f090dd745bcf7b58e8a2bd2d3e738"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.69.1/mo-0.69.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6411a150c7035c9e7f4940369342a5eb0fcd6a7b92f0809ebef6623648af67b5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.69.1/mo-0.69.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a3e00667c9e724ee2129c369c3d10d56492c164a9fcbdc68afc28201263b25d"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
