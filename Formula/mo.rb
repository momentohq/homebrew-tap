class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.36.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "294ba65e9ebc29213ef1621077cb8a3c75bd086401fb307833d4887c2a31190b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3d32448621e22e734b5ca31239f6ccc54e5297d19df5526924879243faf6ddaf"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.36.0/mo-0.36.0-x86_64-apple-darwin.tar.gz"
      sha256 "bcdd811bf19fa6d3e261bd012fd93daf42e0ea2f92167c27b9f65e18bfa71f81"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.36.0/mo-0.36.0-aarch64-apple-darwin.tar.gz"
      sha256 "32ce23d289db2d7eaf3503b035a789ceb484aba5570c258e6250522b94fd35d4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.36.0/mo-0.36.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa85232eac46d462a64eef2e837d42d7ab3a1ba1f21dd83ca34b4402110d383c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.36.0/mo-0.36.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c21b5009dce0b88028ae53d3d14fc29e83866625c34c7f347b1101907ad6d565"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
