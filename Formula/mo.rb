class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.167.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "500184b7f56ea5393e732b02351ee3ce6b85c98fcb62dca8ca4ba524e81d6f18"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c0d14e19ad7742a297cb097ca1e20fe5d9af03a0f90be2ecf0d03458a912c8bd"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.167.0/mo-0.167.0-x86_64-apple-darwin.tar.gz"
      sha256 "70ad81267769f56cb4ce55804a57d6ab684bdf0ef03035cd1c884240d855c04b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.167.0/mo-0.167.0-aarch64-apple-darwin.tar.gz"
      sha256 "ca10acc98e564b14e09b0e78cb36e2aae3e9476197e444d5a0763d5c0ff64186"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.167.0/mo-0.167.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec0d963a2f4ce7e53501a92bec4ede06113171e90f0fdaf7e9b0198c034ff58d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.167.0/mo-0.167.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d8c124c680ffda0e0e7f2b5b22797452854ee754b9d5992daf05e01d18ceb79"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
