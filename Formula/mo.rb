class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.106.0/mo-0.106.0-x86_64-apple-darwin.tar.gz"
      sha256 "a6423fd48fde77c2fd685e3f38bcbfd2b760e1a72650908a3b584e758e86d6b0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.106.0/mo-0.106.0-aarch64-apple-darwin.tar.gz"
      sha256 "2255b87485e060f723a09e7df3ed9ea4797e69439afee1fa88b455dc9abeeff5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.106.0/mo-0.106.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff6374222dbf6bef2b858678b49c070bf913f914924d3af05d79fc668dadc2c5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.106.0/mo-0.106.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d0ebab56955f146dca3c0bd2d962af5e9e6d9662b93ac2b3c9b741e2733d0a02"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
