class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.172.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "303e39423b1c25cbac8b8520a19c17f48439fc1882a3314b940b01a1133cb267"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "acfeba736a3fafd1ead038037d292c35fc164a958d05258bff76a3aefa34d257"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.172.0/mo-0.172.0-x86_64-apple-darwin.tar.gz"
      sha256 "7545825ba3798f4a35cdf020acf78301d8491cc28b50bd54ab19d764c2ddfc93"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.172.0/mo-0.172.0-aarch64-apple-darwin.tar.gz"
      sha256 "43ff20c3fc2b09b5600b7e18093402cf9bedf30ccd2af8ddff301c54d0b3f917"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.172.0/mo-0.172.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15fb7bc45dc8bc6943e5ca92657465ae6243af38335246bbe6871444b5913abe"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.172.0/mo-0.172.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "39f84ed0450e4f80ac4a1d47b16e7f8d5603ac4410605f8236c2b4b7cc0083a0"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
