class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.122.0/mo-0.122.0-x86_64-apple-darwin.tar.gz"
      sha256 "966031dd19484aaaf5e8b321fc9ab710c574bc706ba93943091243c8e6638296"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.122.0/mo-0.122.0-aarch64-apple-darwin.tar.gz"
      sha256 "1fdae7e35af86d5fac87ffb60def74fcefcde3c73b3a75328a12df3d32b10231"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.122.0/mo-0.122.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4eb29719adb46125beda22b86e1248d1f46922395aab3a14ec57713fabb0cd23"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.122.0/mo-0.122.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "45146380c32b4a221ebd3c08f5b9b4905939f08568253163fe8126904935e985"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
