class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.130.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "2974148fb8edef39333e4db4347e0e7b945c6c4af6ceca27c40939758c3a2b87"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f714d43cfb3b474763412805767325bb51ae156160980b490c00071735528baa"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.130.0/mo-0.130.0-x86_64-apple-darwin.tar.gz"
      sha256 "a2c1f7d8e12915e52f13e15f2205d95a46023f57983128cb61a26b400643e646"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.130.0/mo-0.130.0-aarch64-apple-darwin.tar.gz"
      sha256 "76a3d5d276de57d6f9877784af633937dd22a53a9d82a3d4d7a5f61352284803"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.130.0/mo-0.130.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "12318afbf0776d972b7a4f01b093e0b7ba8c381b4bbcd8ca0c08abf6a43fb09b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.130.0/mo-0.130.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "208a018c09001d8a3ca5644958f8503eb195b298a67375ce3b9b4bb207f13905"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
