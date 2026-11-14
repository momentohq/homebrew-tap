class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.187.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "8c5bd47dd9ebcc3fd60754cdc80a3b302701de1cc83b27079df4c0b1c6cce0b4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "27272c47be24ee14039495fd665946f1e6e84768745cfa4afa955017ebfba899"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.187.0/mo-0.187.0-x86_64-apple-darwin.tar.gz"
      sha256 "3f9b67da4a974ef3664d18f1136798998e931ca3279aa642e316dad57fbc0a7e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.187.0/mo-0.187.0-aarch64-apple-darwin.tar.gz"
      sha256 "c66b72912364ec72ad2b1c9abf65d553b8685536667f7451f5713379785b2ca7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.187.0/mo-0.187.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8359f583983d7644c6d3ecbb79314ae163f03124830f2d4d8871070dc836b0e6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.187.0/mo-0.187.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f746764013f23df8eecff021e610847683b66fb541e4da72efadd093cbf94ed2"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
