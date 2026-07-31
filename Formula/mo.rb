class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.87.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "6129f57e42f1b15ed77dcf95ae7ee652bf1bb0eb67984536f2e48383393c075e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8d513cd46723bbc1cdc25150ac9ab33f4220bd47e7a0f45d67be9985391b9875"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.87.1/mo-0.87.1-x86_64-apple-darwin.tar.gz"
      sha256 "54484185952610a20a4baab3b7c48398f5f55758a09b0c19e85582120ba1e16e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.87.1/mo-0.87.1-aarch64-apple-darwin.tar.gz"
      sha256 "3f56aa62761225cc73ca5644c80cd7cdb37524f75c0dad11f851ccdbc93e291e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.87.1/mo-0.87.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "68eb3b702396c11e31f612d83601ce6a4742472d5f687a3973787d58d967b467"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.87.1/mo-0.87.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a94027675cf7d7b06216193587bcdb6c3469f7a56d98954e4b7fcb73d95907f9"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
