class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.186.0/mo-0.186.0-x86_64-apple-darwin.tar.gz"
      sha256 "942d2251a0523b83c8b6b1d5eaf9f971974beadb7d683070cc45d97fecbe1dcb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.186.0/mo-0.186.0-aarch64-apple-darwin.tar.gz"
      sha256 "551b2413bc75a1d6342da45583e94c8caf101ebc3f8c180b7d54fcbb8c70ea31"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.186.0/mo-0.186.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3edab7b55077886ef5c0f2407bce3523dcec59b0a746a0f77ad698e43641e4d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.186.0/mo-0.186.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "169641e347876c797fbd279b2950d140affc115a24854067ac59b01e502ac241"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
