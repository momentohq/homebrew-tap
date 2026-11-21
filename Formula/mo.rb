class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.200.0/mo-0.200.0-x86_64-apple-darwin.tar.gz"
      sha256 "c3c844c25f9e2978d12020648947184b240db6ca5cb0e93fab7e9d3c2d31ed04"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.200.0/mo-0.200.0-aarch64-apple-darwin.tar.gz"
      sha256 "7274dbc356893f053b11c6b91d0e7e96750ac74cbe7b4979c88833d6bb2f045c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.200.0/mo-0.200.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0af901af215fb9cb7ab0962e9e82e5badb120a4388bb552b7c9001eaac7ef518"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.200.0/mo-0.200.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ae2f0c5d0bc80d381fff21452a53b0c57cdcb9fe9cf4b21f674515a9d9703189"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
