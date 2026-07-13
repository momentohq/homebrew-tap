class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.43.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "1100e4d6b99727efddfb35dfd8f822da5c3ff080b0ea68720ac58cae326cf700"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "81d7190ffae47ae2c1aa4dbb8583ebe6b8f8dcd8052ddc12356a1e8ae90de5e3"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.43.0/mo-0.43.0-x86_64-apple-darwin.tar.gz"
      sha256 "cbefe86f4cf05daa65da61a43a9b64a112b222bfa04bf8e4ecbaff4e67c2b0db"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.43.0/mo-0.43.0-aarch64-apple-darwin.tar.gz"
      sha256 "1c8472cbb44dc6da948abb3accda761c56beb3d7e4d73c967bc2e2dd8b837695"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.43.0/mo-0.43.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "52f60caf44d1bb763697a4ebf2a3fac0da50f638e0fc1f8aa0dfebdfd3c49903"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.43.0/mo-0.43.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "361b0f897fd3709ffdddbc22884761433605771b98a0c5514e4760e0dbbb135e"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
