class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.182.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "ea73320cd62d8b557a6f4c5bf307cf9b2f636a5aad184cf2c10d0340df738f1f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0966f603f8108fc69d8fcb005aad2694b9d0b2941d1408f27cb307e3590d9ac2"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.182.0/mo-0.182.0-x86_64-apple-darwin.tar.gz"
      sha256 "b858b7821f9a8b090d671c7850634e503537da3097239c08f8afb898f02e1cab"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.182.0/mo-0.182.0-aarch64-apple-darwin.tar.gz"
      sha256 "bde5de1540afae4f0a67dace16dfba2b54113191d81e017fc161e4e1b0855bf1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.182.0/mo-0.182.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "02e0fc7e97eeaceece1dd3db2084911e63ff9855aaa8808d058ba628a0a963c7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.182.0/mo-0.182.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff18765a63f491522f14878f99ad3f3244b7b1c502345eb1d560f66419af6f78"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
