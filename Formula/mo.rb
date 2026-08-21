class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.115.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "08e0a4c608bc635986afec21fe73214fe5bf393974d16046f7ccfcba1de7fb4a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e4a038d738bce4c1bffc16ffe0e2e53f89bab58c9b7b3a1839554aa35ea2e8f1"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.115.0/mo-0.115.0-x86_64-apple-darwin.tar.gz"
      sha256 "b3d16280db50f7cbb2708a92a8a9e1f7b5193d3c1fbb7b5d491894baddb23962"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.115.0/mo-0.115.0-aarch64-apple-darwin.tar.gz"
      sha256 "1330cfdee6e3d338328224ad373b54c471bcb6742bf654fe5f6ced1499a3669d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.115.0/mo-0.115.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33b0e3f55a2f6f7c09540f07689627ce51d2ff794244d3ebe009c8a3a1f2c921"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.115.0/mo-0.115.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c923526ea42fa33fa413050517dd450a08c0b9f71974e1da9b287d4dcc341803"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
