class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.168.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "c8038598628bbed7d842a3a15e9104f03e868321bb9b88555d3555e0965c3614"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a6b32a6f17b2e6c4feddd4b6c02b02e1f4abf0f0c3dcc3131800f4537dfc889f"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.168.0/mo-0.168.0-x86_64-apple-darwin.tar.gz"
      sha256 "f38816d79f273eab63bb1f5764b4e14d27c7bb01f16d7143fb858a8bd6f9c250"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.168.0/mo-0.168.0-aarch64-apple-darwin.tar.gz"
      sha256 "67ef645657d07fe075224de8b09a9d7257da12249c23376b9d59acaafda11ae7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.168.0/mo-0.168.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8a78eb4f9e5824f7b37875ca16ed340f12f484fffacaf0e738d444de8c1bf26"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.168.0/mo-0.168.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f2fe8a132b9abd34065f1d2760a2473506a96e316683755cf08f53e8f97ec76d"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
