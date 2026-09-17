class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.135.0/mo-0.135.0-x86_64-apple-darwin.tar.gz"
      sha256 "b59a07e7bb92e728c162b228922821404f46bbcff334360a169bed0f1358c1ac"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.135.0/mo-0.135.0-aarch64-apple-darwin.tar.gz"
      sha256 "e7fb71d88bbf01b9f60f3dba57a8105ecc4011491884a44feb091de9ea324957"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.135.0/mo-0.135.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dc91716b3e4d1ad397c07305d003930714ab5a53fcaae1d9d1951427af619a62"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.135.0/mo-0.135.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d152631b8c63e061edfc9eceb554ba66e8a6fb2fbba5ce4c5349e7c3917940a5"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
