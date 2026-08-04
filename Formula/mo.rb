class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.92.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "fa88d1182ba4688836d3edf9a15c6566c949eb556bc698746a2f5371d00e3031"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "565795d6096ad454e2fd6056e03826b2e387b5aeae380e8948258e78db9717fc"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.92.0/mo-0.92.0-x86_64-apple-darwin.tar.gz"
      sha256 "1838db96c0ea445309ace234f8fc7c9d962776c5e3c33fac4f6a3f193e980902"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.92.0/mo-0.92.0-aarch64-apple-darwin.tar.gz"
      sha256 "cfe3bfdaa2fd3c158c15bcb74b305256d05b24b97864ed14f9fa0afbfbd5369c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.92.0/mo-0.92.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7da3b85ece64f31fe1100ec03bf72225636a86b746c1fa25604446b4dff8aa93"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.92.0/mo-0.92.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df6a1d3e3b64cd5755d2c264fb9b2e488efdc23625d4e0a6524369fb73e65aba"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
