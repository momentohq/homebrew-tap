class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

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
