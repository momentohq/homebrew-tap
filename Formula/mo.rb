class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.31.0/mo-0.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "49c81827325671d84bc8e1364b2f61d953ab29574b06a6cf258df8f74bb8dcae"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.31.0/mo-0.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "4717efd429d727bef88badc002798a07da9a947fe2399d4140bde62e4e13c1c6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.31.0/mo-0.31.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8eef4597fd261efb6a532490155721cf6c55df7e133ab885ae21f3d97621fd3f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.31.0/mo-0.31.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b0b252d682841aae066c1b0d052b20dff1c5d720f190a297448a03c187d09c70"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
