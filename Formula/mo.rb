class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.29.0/mo-0.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "38695e799e195a8829f7b7a4fc17e4d3247ebfc42f44981407ce4c9551e23c08"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.29.0/mo-0.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "ddec98d9de85c611b6801c7fc585aa79f296c0b768711aadf274631f397bbf63"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.29.0/mo-0.29.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "560c4ae839089f11c7b37101132cf1d212c0ef56a13119fb433508e5d316eb39"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.29.0/mo-0.29.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "25acef2bb6b2110b7ff420344262ffea9f093e9e41709cced88a69119122f81f"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
