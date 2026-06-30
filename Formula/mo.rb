class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.12.0/mo-0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "fd560cad539bac7f00e54c817b900798c0311d9981f2fdea8183bbdc303a89c2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.12.0/mo-0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "a9fe3621565f42c2099d2b414173758e0ea9d7d537773aff1a9072e7e4db1dd3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.12.0/mo-0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba6e950e7eef9ceaf3691118505a8e58d8d2f97588548bca4297ac6dab66d6f6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.12.0/mo-0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c5693b424151a033235d7eefe330647a93db5e386cc74873ddf1da4e3ad5775"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
