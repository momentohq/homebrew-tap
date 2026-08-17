class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.104.0/mo-0.104.0-x86_64-apple-darwin.tar.gz"
      sha256 "7d0c83c636fa959318843a4f8bc88847199ad8e3d54bbd70f7bc388c06357f3b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.104.0/mo-0.104.0-aarch64-apple-darwin.tar.gz"
      sha256 "23dbf6fa0d59aa24a1861c316a8fc176c276e64176c3bea52fcbc97d1b3d542f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.104.0/mo-0.104.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ffab8cec3e7e8409f9437f4a658616fccc6507261311364a7fb46ee51988de50"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.104.0/mo-0.104.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e0690fa35c01472d1e60a409d190cdc7c5a70897a53bba95a2ddd50b28b55310"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
