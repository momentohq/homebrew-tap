class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.195.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "7da58b82d3a5a72ff5d0c7de81430d006ec6b28dfc7afdc14caf4f43c4065203"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "693da3451be49472cc23efeaaa6651be93284ac2076226c1d12403773076104b"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.195.0/mo-0.195.0-x86_64-apple-darwin.tar.gz"
      sha256 "55d6197106f26f5a6553838fcce36a8abb4a582b7c7ae864c3cbdd0c6679ab94"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.195.0/mo-0.195.0-aarch64-apple-darwin.tar.gz"
      sha256 "f1a62b7ec9eefed31b157c97764073729bd8fc8944ee316d047746d58c3d3152"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.195.0/mo-0.195.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "85b7b73b155f3e3b8abfd21500cf3b6e9bc8bf2155e2b5c3ba9b03c22aaa091d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.195.0/mo-0.195.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d3cbbe9c9403e1a45db5dfcc66a6de5fb796e9a0cb1836a4a0f73ac3c38ee433"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
