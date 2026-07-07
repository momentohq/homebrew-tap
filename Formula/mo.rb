class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.30.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "584b4139d003e174fbc2874a70d83dd18c1001b9d5a7279741101e9220730ad6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7c9aa180017c7bc335e106ac93cc4b22f2fe94837502b05225a19715fda74963"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.30.0/mo-0.30.0-x86_64-apple-darwin.tar.gz"
      sha256 "308c4bcefb793bf4e1ecd4a2aaf2c380054cb7908f0ca525374ad34a4c422acd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.30.0/mo-0.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "01cce54637ca70aaf1e2d19ffd1509591aebc9fd56af3f8d148ad06d73d33464"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.30.0/mo-0.30.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "05a3f88d9813759140b4c8de4ae804afa86944744ed0b68b764cc73da2ceaff6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.30.0/mo-0.30.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "282b1b863f41f0d0a9cac06a150c6fba28dbce4135e7ba62352e99a98a2b3837"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
