class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.83.0/mo-0.83.0-x86_64-apple-darwin.tar.gz"
      sha256 "4b2e6e0e8fb44859edc54a1889096602cd2492f10e59089afb0ca4a10c269634"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.83.0/mo-0.83.0-aarch64-apple-darwin.tar.gz"
      sha256 "6831bc960dfec240704774daf94d7ad34de602eb5ff3cd53000706716f2b95ef"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.83.0/mo-0.83.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "75f3e7d880af3a640f78d09df9341aed09bb7a50b15ff180b55332c1f41862df"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.83.0/mo-0.83.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c9d45448d45300762c7c9a30107557f7c68b8f2923c1c64753a8e1e5b40a5e7"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
