class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.147.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "05504d7d94ed13bcc7c87a356aa6823d0c97b8d9651f5d0ddcd1e747aee5fac0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1c36d87de2281fc13a987e955ba88e836f5daaa42c3ca09f4e43a2e7984bbd11"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.147.0/mo-0.147.0-x86_64-apple-darwin.tar.gz"
      sha256 "1cbc8c3464b24137f5316e1b61cd3d9fa17a14436195ad733adcaf7fa3f5bbfd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.147.0/mo-0.147.0-aarch64-apple-darwin.tar.gz"
      sha256 "92b5a43c500a8b86dcb6492a7a95a98bbafa439d02307e86c74d24fa9778e735"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.147.0/mo-0.147.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a522a444a1b8e6fff4b60e70e6d245ff39115a51066ab9090fbad83a0881c42b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.147.0/mo-0.147.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "061a84e8dc83a645d1cab8ff8840cf43df23aa38500881216c93c61dbfa24f91"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
