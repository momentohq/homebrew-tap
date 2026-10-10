class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.153.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "cc5a5027a4910a5c6de13b7b49d006c11824445b35f4f6906d019d12177d02af"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6eb7fe1747a5ed3bf7f492d9fb3f16dfc2562022bc40afaee3ce4c61f513f189"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.153.0/mo-0.153.0-x86_64-apple-darwin.tar.gz"
      sha256 "4df92a6025a23d0c677536400daa00da28be078db638aceccb7ccf855ef53d59"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.153.0/mo-0.153.0-aarch64-apple-darwin.tar.gz"
      sha256 "d7ac6da6b81699fb48d280a1889f2dd3a39175729fd19b0c972dd5cfed301e55"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.153.0/mo-0.153.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7772b30993d19658dbdbeee07b357449d46f640adfbda00f97b8f2b9209c1de"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.153.0/mo-0.153.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9e55c49e9ba500f7396f5c1670f5edad4c7d08a2fac84e59afdd5f9261c81508"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
