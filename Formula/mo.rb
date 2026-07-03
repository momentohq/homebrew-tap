class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.19.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "b218f97c01ba6fbfa21c41b1be4e5195d7d71f5ddcc8ebab7b9d7eda6c640474"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5681d2319b10032eb66f0d78121691937d686f6663935df72de30c3d34d12aed"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.19.0/mo-0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "09859425a5d6cbdbb79114f6bb72d3905bce706498d40d2d9e14df1ed5073c17"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.19.0/mo-0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "1e86d54c3e38541b0349414472dec8116f61a2c0a1450e8238f9dce30a542b89"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.19.0/mo-0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f8b363dcd0338302d2e86ca1e21b9d1335f1a7052ee6f038691f591f9bfff726"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.19.0/mo-0.19.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a56c2139ec0f09fc94386837c33ae1677716e1f05422726bc0107a39198d00a4"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
