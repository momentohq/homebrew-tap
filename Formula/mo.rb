class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

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
