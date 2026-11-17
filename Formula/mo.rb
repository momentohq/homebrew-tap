class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.192.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "67a90840647f77847778a7b38c78e4c6f69379f0c884033b4703e84557aafea2"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "40aae42e9be39de4d1b177a171c7739a175eb967f22c5df100c9631a60408516"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.192.0/mo-0.192.0-x86_64-apple-darwin.tar.gz"
      sha256 "fbb0c99f0f3caf07928af6237195db5cb78113179a85a35139e7b01fd1ccb9d3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.192.0/mo-0.192.0-aarch64-apple-darwin.tar.gz"
      sha256 "f3e23043e20ea7b9c69256ea3b7b8ff3c1b7e25065857e07d343269342b3e441"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.192.0/mo-0.192.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1e6206958f1b42aea745400e192b9eeb0f84107952ca2c5eaec0294a47149903"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.192.0/mo-0.192.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a3795c2109a9f24c356475389885ac22d14c6fceaf8f952c604a9a2f1478f061"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
