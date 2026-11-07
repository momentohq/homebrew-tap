class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.173.0/mo-0.173.0-x86_64-apple-darwin.tar.gz"
      sha256 "d3361a23ffd580a5f750819e75f2f90610b35280e0487dbb486f6425f33c63ac"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.173.0/mo-0.173.0-aarch64-apple-darwin.tar.gz"
      sha256 "b5ea2ec6ceb18b7ee567423c8448b08af251d304da0ec81567af591d5613e0d7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.173.0/mo-0.173.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "760529e66fdd6c092163d181a6519933f4460ecb548a894dbfea57cd90932bad"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.173.0/mo-0.173.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "31c1a76d01100ee670635b045c36504da58ec882b2b34089ec32045fc538ea33"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
