class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.198.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "2f188cd8398ebe8b6192ae2996b648dd645ba58229c01b099584ab339e013cbb"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6d498005a07c2e7813e71245aab493ff51f9b68b184377e6966e594eede6256d"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.198.0/mo-0.198.0-x86_64-apple-darwin.tar.gz"
      sha256 "e7854842a85dd07cbc2d3c775e8f918ead68423d201c26976df5b1df2932769d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.198.0/mo-0.198.0-aarch64-apple-darwin.tar.gz"
      sha256 "7ae3a13ce6c12ef059ff4d2bd52d5da019a1ce7c48eded8c63aa3961eccf84fa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.198.0/mo-0.198.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b482006d545eff4b75b99cacfa32c13c47d8bd11b30319a06fe3ec0f6e343dc5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.198.0/mo-0.198.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c664d959f41ae4e24c680d0990aa22096192c14afe81b1ea85c18f54a2507ca2"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
