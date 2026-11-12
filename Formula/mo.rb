class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.180.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "50cc978b832214d040f3cd3f939c68b0b28538bcd85e86ee947379c62bbd5db6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a8429edd790f2799cc91b772e941b33282d7e52b16427ae3837d8c31791ae8ca"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.180.0/mo-0.180.0-x86_64-apple-darwin.tar.gz"
      sha256 "777da53d42e26c21e87b96ad87a0d2b13940489b586bdb5866057ff9381946c4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.180.0/mo-0.180.0-aarch64-apple-darwin.tar.gz"
      sha256 "309f7d5d31dbed76d519d147c0e696ea21ec2f3d0011a226123e986a727a8765"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.180.0/mo-0.180.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6185e1596ee27ebe996af5eec8c69dfc2639981496dcbf74ad607ff190d9023d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.180.0/mo-0.180.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "23bdccff5acb8f8824283f7679ec1caea4b0018b955626702bd3667890b4cb15"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
