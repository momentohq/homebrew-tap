class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.44.0/mo-0.44.0-x86_64-apple-darwin.tar.gz"
      sha256 "d72f7e52fe9e337fbd1a8e4e6cdf33beda821aa956daa0f5bc30da18140603fd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.44.0/mo-0.44.0-aarch64-apple-darwin.tar.gz"
      sha256 "27e7a2b373d6281b1ba264148bce0f124b33b64be3902af27e0c8cc02f89b312"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.44.0/mo-0.44.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "94923b9bee72236548229a0472d27f668dc50b59a3b283dd3d9eab3953f0a9e0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.44.0/mo-0.44.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "526e0a34aae3ff55512a9ef4250ae869423c6cef7b0174140a7df7336a9bd958"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
