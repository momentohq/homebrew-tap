class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.150.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "35a1a5c0dbf00cf371b4e041db3f7234492926c431a3bd5bac811285182321e2"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "13f8bad4ca620bf2abc11024ca21a2544b1b62fbf8e82ab269326bec8fceb8a0"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.150.0/mo-0.150.0-x86_64-apple-darwin.tar.gz"
      sha256 "1660b13e05f362892f50c74b298707cbc46dd7b7bf7058834695f44be97c13b1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.150.0/mo-0.150.0-aarch64-apple-darwin.tar.gz"
      sha256 "5f11f8ef0e39533155759fb93f993e248caa4d1541b12e733a4a0cee4fa1bfbf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.150.0/mo-0.150.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4fb15f36e343c31d14dcd6c3b60196e7d5889d864e57bef222b8f9cea76d046"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.150.0/mo-0.150.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "62451f3ca4c02ca2abe178999fd9d48519cf211c7a50100e843bd03d704f256e"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
