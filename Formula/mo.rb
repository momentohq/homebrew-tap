class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.24.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "6dc36ddc776d43853e15be25d06b146cb79c19da103f7292c0dfa656d0ea7e11"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "946bee636b9a2f8a16fb9312a6eb16b7db9b52bfa87ee5d47d795a6d7342898c"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.24.0/mo-0.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "49510bdd0bb562cef0d359f8f830f4015191c1631bc75da4fa991cf9e875157d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.24.0/mo-0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "e70bf0bcbb96aae058785959f38643b290e5ececcd50a25e6c180839ac634968"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.24.0/mo-0.24.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bac68d42af38bec07a2a71b234f7ac51088c8b4a4a839598923e23d125d26f3f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.24.0/mo-0.24.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e48064f794d59503db6f8a2a815c9c5d88b77c7e3f55bb2c05d25c526d3b68a"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
