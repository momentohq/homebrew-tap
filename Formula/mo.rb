class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.46.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "3969fa8e475256ad775df523be365241949fed6e985ac6c22cfb36aea3c9a44e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0898c68da97dff9deeddc918b39f0255f3232e21967060264317c04d3e7f315d"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.46.0/mo-0.46.0-x86_64-apple-darwin.tar.gz"
      sha256 "49c1d924173b4ce3fc6e0e8e4960d4349ee9c1fe98e996d6559b446d5b630384"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.46.0/mo-0.46.0-aarch64-apple-darwin.tar.gz"
      sha256 "c249987fe41db388b1ec515997df8521830e204508706acf5ffa38c552ac71f8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.46.0/mo-0.46.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a85260100d6df2d10b8b506a3bce1f9059e97eaaae65c9e5d4812a9352bb2c7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.46.0/mo-0.46.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d15caa9a403cf591146199ddae0c78a5a040bdf12d53d80a83aa48a44f5a1b7"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
