class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.37.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "c6c19dad7c9ed0bccb9c8849ad35751b321600d6f6b742123b9ded74e51ce72e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2fa675cd615be7aab34471aa23629fffd63090f2f6f763a19c49a7134be98c06"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.37.0/mo-0.37.0-x86_64-apple-darwin.tar.gz"
      sha256 "66ea322f2ab317fd1390ba25d9ddd730c61ab6d150634508b3db6d3251d3ec31"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.37.0/mo-0.37.0-aarch64-apple-darwin.tar.gz"
      sha256 "73c183db2e86298b9c277f8e94badc487f3863f205ad09b333377e0ec8735b5b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.37.0/mo-0.37.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb2de01fe549047c72f08f066b17c6addea4ec47403adfdfe7d2232fda4108de"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.37.0/mo-0.37.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0196f89f975916eb25252152500a472ffac9e2e1bdd81f612f8ecb22d9ef3feb"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
