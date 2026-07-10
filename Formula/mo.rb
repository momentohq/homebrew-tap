class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.39.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "e38340c96e13e02c94df9ec4183314edec7827cdeecd6a90742bd695ac70f6cb"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "33fcdc2e4e23f16ae950a54534da148c36c2abeb2bbd2aaf749e2d6e70665174"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.39.0/mo-0.39.0-x86_64-apple-darwin.tar.gz"
      sha256 "df31432dd87b744c779531d5487fa14d0d894cad7e529526f6d8275fc5afc9a7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.39.0/mo-0.39.0-aarch64-apple-darwin.tar.gz"
      sha256 "33ed6bbe20beac866eeae284b5f3e917bdb5db33eb323ab953cd3d98a0638d53"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.39.0/mo-0.39.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2a09354ab192ad52a0e118924868dd018be1143c7ab04738caecc3f19c25a8d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.39.0/mo-0.39.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7285c4243d6f64581fe0ac02a5d23f6cb2474d4d2adbf862089c0b260ae1d0d4"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
