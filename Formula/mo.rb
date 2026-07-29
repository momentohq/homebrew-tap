class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.86.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "3fde9eb419fd3369309b870089bd9399e341c45082d7f883bf825252c6bc7090"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e80abcc18334754d14d6c4bd457ebbdb55304fc0d1336f104d08924e30a5dffe"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.86.0/mo-0.86.0-x86_64-apple-darwin.tar.gz"
      sha256 "2958ad73da6ba97280ae6551f8891eccc6fd0f50e47759464377abc20da2c76a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.86.0/mo-0.86.0-aarch64-apple-darwin.tar.gz"
      sha256 "7be8473b2bb2829b353def757eaa73309c8092ef7b3bfe9b9fc5cc06737e240d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.86.0/mo-0.86.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "81a1acd216496b0eb3d72fb61cacc3dc64faa3c5f5bfc28d6083208f313678d8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.86.0/mo-0.86.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7a183bd009387f7268070c9b4af59734f26afd01d2a2db7cb0f39347383fdb47"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
