class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.51.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "c8e8006f5c682ade5039bd6eb80a4c7188b12f4c4b8d9635f1a63654a4632381"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "dd3dec23bab88d53e2ea8af74aaf9c9f75f79c928e3847fe6a276abeee0b0e08"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.51.0/mo-0.51.0-x86_64-apple-darwin.tar.gz"
      sha256 "ab6b9a41379ff64f681e71966d38ae3dbbd1816f5d4a1a9b8d9dbf019744d20e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.51.0/mo-0.51.0-aarch64-apple-darwin.tar.gz"
      sha256 "46545d2af526f43ce8e6f4e70050742f96d37a12452557ed722519db4ce3f558"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.51.0/mo-0.51.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1581f049d8a35964f004769afd9a6e729599535fce1ad5d28de5076e6d2f45a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.51.0/mo-0.51.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a0e90daa989174186c3c0a23a122390f216ec2a9934f1e20f296d0b954cea738"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
