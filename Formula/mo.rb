class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.102.0/mo-0.102.0-x86_64-apple-darwin.tar.gz"
      sha256 "aa182de0ad7fb9d7bd6f0ef5838e052711b9f087f69ab8ae55ea16602a0b8b85"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.102.0/mo-0.102.0-aarch64-apple-darwin.tar.gz"
      sha256 "bd159e8434f8cef8d75aa2250749ace310255fa39fe8cda4c577ab464680b80e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.102.0/mo-0.102.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b79d1d98a6fc237fbf47af042cb162920d90b50a46f9363b445681eab7dc313d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.102.0/mo-0.102.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a0127a5c2a34e30223e5890d2ba5f5b94915be5cd8e517ca3f1876e706dbe071"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
