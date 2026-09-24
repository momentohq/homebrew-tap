class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.146.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "da4944b60aa8e81fe1dae64fc25842bea746481eadeb0a37bfeed164a926920d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "dc71dfadae2bb0b08fbadf7cfc30825a8fa8165382261cf2d9595da6b43fc1b2"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.146.0/mo-0.146.0-x86_64-apple-darwin.tar.gz"
      sha256 "d2c15672030012f9f87c5d6d89aac9addd84b4b90f7d21ec320a6c53feec533d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.146.0/mo-0.146.0-aarch64-apple-darwin.tar.gz"
      sha256 "9851cc756667e6da495e3688e400bbabb192f675a82a4ed9269162bf8befcb3b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.146.0/mo-0.146.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "54ad20f6916ee0088142443705c893a57a50f1d5797a365a5e8ecc53ffe68d0a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.146.0/mo-0.146.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb024f291510e161430f9a3aefc7976bd3a1ead9cb82c7a4795dd70b14a9e810"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
