class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.151.0/mo-0.151.0-x86_64-apple-darwin.tar.gz"
      sha256 "7240b9629bce7247c7791ec770546d2c528da4d321e40b8f1fdac98675d0c2a0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.151.0/mo-0.151.0-aarch64-apple-darwin.tar.gz"
      sha256 "cc780af029af52e5ada1e5a9c088a52a6c9eb41a4f196714fe4465e98e106d76"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.151.0/mo-0.151.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c056f6a1e42f5080f48ec591b2f42f18435170b9f474355f069c8de901184693"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.151.0/mo-0.151.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9478d565d4f39cbf4343149ec314439a5311a951994497ba1f70ecaa38eef7c"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
