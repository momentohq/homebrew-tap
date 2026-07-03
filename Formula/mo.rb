class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.20.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1d14b45f0b43ffdc7873b73ac4a0a0003378835d9c4e777c927788997ad2f46f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "eee29ee717074a0003d8a3cedd79b3695c5ea5289ef5db778063b24b552dbd35"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.20.0/mo-0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "4b6e7a76e6f53a5ba7e448e3865e73312ef95c9b6db7b6bdca5abfccc6fa699b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.20.0/mo-0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "1339ed412acf5af13dc754c21549d364a4ff82bcab4cb8cdab3c62b8ef598cf8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.20.0/mo-0.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c5c7ee48ed20ea4d8ae1bc1c40a822505f610cccb2c4726cae5dd0159fa54bfe"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.20.0/mo-0.20.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "77e07c90664b0d9479c6375e454cae17db6077d495419a7374678841a4aabfa5"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
