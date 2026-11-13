class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.184.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "843ccc7f33320c5c3341240bfd38ed04713441781c6bdbff604c4b3a46a0367c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "76cfc278b4c17ffe20b7f318d164f636a817596bd9197039410fb00ac3d8d09d"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.184.0/mo-0.184.0-x86_64-apple-darwin.tar.gz"
      sha256 "3ae930e10e94fd7603d1ae3e790827522f0d2fa956d9835bedac937dee3f34ce"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.184.0/mo-0.184.0-aarch64-apple-darwin.tar.gz"
      sha256 "3073e9969d1767295ad06df1151f74ef17153fde00c39ce3199bbf55c5f07902"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.184.0/mo-0.184.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67e0b66cb6baa0edc9489434cebb58d6013f1a6a1f9dd9fd62db99aea58f76d8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.184.0/mo-0.184.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c055ad890a9f78540a570aef589f359ac831fec274800d60b6393f270d117ea"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
