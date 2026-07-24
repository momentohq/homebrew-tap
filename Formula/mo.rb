class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.71.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "f3d13c48ed41707e75a0b59c14cbb790af202e4175e6a9ecc24aec7fe70024b9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b150119ba7def9534d342a70fddd2dd4b8b30d7c9e5e3544cd636f6c498328c8"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.71.1/mo-0.71.1-x86_64-apple-darwin.tar.gz"
      sha256 "07e0b46e8031079392164cd08df2525812ef92a00ab8f26295e00c849b3e4bf7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.71.1/mo-0.71.1-aarch64-apple-darwin.tar.gz"
      sha256 "805ca808ca08f49577539dc1f0fabd2bb886a91c854a6c317be6bc728f525740"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.71.1/mo-0.71.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db17304b25ae393a72aa271364a2e881f3502be891f756a99e6e295eef4eb5aa"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.71.1/mo-0.71.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ddd75c5dd7de278eb55cee1a985585275de90fd93eeb891f3d2ba673bb61dbc8"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
