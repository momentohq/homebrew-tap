class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.12.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "d1cf6ad89811b6899eef764824f24694ca8d2456c9d8f99ec457fef293d51fd4"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "abca13b8d8b620727d50c851bd48f25506de57fda3bb3eba213b180af244c539"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.12.1/mo-0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "ac3c961251062ddad5e5683606b8d231df4256c0667a87678ec67fdb4d9c705a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.12.1/mo-0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "ecd75795756c9731a6cfa1d37eb8002f351d0fd361ad1a4fb33b779856317224"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.12.1/mo-0.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f24bfa414398553517d645a63d805cce346ab2b0d73f172c0a6fe30a1695751e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.12.1/mo-0.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7f71ae0de660d17dcc44e37ae12cebb54d5c10d06ec6a873114c55f7ce2b35f"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
