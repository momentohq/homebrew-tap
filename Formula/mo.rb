class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.178.0/mo-0.178.0-x86_64-apple-darwin.tar.gz"
      sha256 "7b13293165f224d72e4ed16eaaba0a914a51e7a8c41a61a123f4ef3af81e19bf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.178.0/mo-0.178.0-aarch64-apple-darwin.tar.gz"
      sha256 "66182169d2e9a32bd69c5bcddcb252af7d8d8f535c3f278f59b0c0edcf0a3e30"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.178.0/mo-0.178.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c865066b4b42d7842a782c8e99e5e633bb45e749922e0da6c109f8b2927cffcd"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.178.0/mo-0.178.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63e260b21d160029db5173184f6c0c365161407a7142aa743ad42699bccfcf78"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
