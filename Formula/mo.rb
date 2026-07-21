class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.60.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "7d3c8cb13bf5ab417d6a8d2063eb4b761da7d7a3e62094cb54ade701de1ab20a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6902eeb6382582794f751f85d17bbdeb36faaab04c2ed4c9fe535b04593c8758"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.60.0/mo-0.60.0-x86_64-apple-darwin.tar.gz"
      sha256 "66fe5122b3f452cebb5ea507fd42fc29cd04f14d213adaeff94af76eb04002a4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.60.0/mo-0.60.0-aarch64-apple-darwin.tar.gz"
      sha256 "cacf2d78fb2b9fd7f22803655ddea2f63d8d3e87c614efaf0dd11153dda4ea95"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.60.0/mo-0.60.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa86fc30b28bf855b4ea1f9500bed62d9621a72b49c387ab22eab855fe5fefa4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.60.0/mo-0.60.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33e994efb91ce0f08da493664882397c1759a76adfb948848cc7ffcb36a2711d"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
