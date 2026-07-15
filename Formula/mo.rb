class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.49.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "5df0dafe973e6a7764b8a442a8182fa2d5c0d78d2546b521055630af7442b0ce"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0028d31ad631edeb15ccce6feb9655501d0ec422199709400c5e8cea587f7beb"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.49.0/mo-0.49.0-x86_64-apple-darwin.tar.gz"
      sha256 "fdccd6496b183fdc5f7958384b695b9802ec5e07cc369ff857afeb839b9415bf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.49.0/mo-0.49.0-aarch64-apple-darwin.tar.gz"
      sha256 "a0e00287b1c634ea8305e85bfd3bb24ecb7ec4bcf17f289b581e93065dea5e50"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.49.0/mo-0.49.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ab0d8f854a223cd84e841328f4abe605a14c82b2a4c39cdb86c694973592394"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.49.0/mo-0.49.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b77a936a3ed2a276136838005415577bf7f7602a091493230d3fe15cb1b0296e"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
