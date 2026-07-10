class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.40.0/mo-0.40.0-x86_64-apple-darwin.tar.gz"
      sha256 "a565f80b00b18317fbe09c5f4cf291d477421a20aedaddbc13d818f5a1de6e93"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.40.0/mo-0.40.0-aarch64-apple-darwin.tar.gz"
      sha256 "bf6809f1d137dddfa20b9a0949cd31badac6eac3f6f478933b642ecc5738f157"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.40.0/mo-0.40.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "41abb8b914cdd747dbcaa100eac967e92d5fac7134c0a0e615a6b5bafc9b3c52"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.40.0/mo-0.40.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c245c3d5ad5016b41b7b28187d282ea5d9b8638e14c0d5b5da2df1191c93319"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
