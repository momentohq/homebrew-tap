class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.100.0/mo-0.100.0-x86_64-apple-darwin.tar.gz"
      sha256 "e057f4f0b13386f21bd999c9c8b93748bb7ed202914f7044b30fbd2391edbc38"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.100.0/mo-0.100.0-aarch64-apple-darwin.tar.gz"
      sha256 "feecc165fdbdfb3fc0d2f880c2ba0912a7b2b2d1fcb2e851872b68c768f45621"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.100.0/mo-0.100.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba6a51324db0a4e21d94e7394a0273919dc8a140edb1677a34964134d5056797"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.100.0/mo-0.100.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "31262a192640fb7fedddaeff9686ba653185186fdad4cc870337b2f9063262db"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
