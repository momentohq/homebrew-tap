class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.18.0/mo-0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "051ddde70ff65f5b8ab54296c9b251702174879858e14d49b2cd809d79d0eddd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.18.0/mo-0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "39141aa317f6727b77b7e907c281c739a71a9de343f2a2275a992bf65aa6b408"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.18.0/mo-0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aed60719db9a7ab1bb2262768d18dca75183fd18ff0a3ddb4a1625c8c8e61dd4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.18.0/mo-0.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "617734e2bf8cb123ca4c8e3239c47c69d242feca2fd40a2818e032c9a0d7d0b9"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
