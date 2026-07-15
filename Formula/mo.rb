class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.47.0/mo-0.47.0-x86_64-apple-darwin.tar.gz"
      sha256 "25e7c3d6d26707a24e4c27dec1f2786ce6d244c14fb6b27b377121dad94c35ef"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.47.0/mo-0.47.0-aarch64-apple-darwin.tar.gz"
      sha256 "732d645624c80019fdeaf4102bfc2e5e898023a5eaff3d70aec4b4e7014238ca"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.47.0/mo-0.47.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d0f8cf23b6df625de4ded9740651f4d15e1d0d0476b1422924f1a52d405924c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.47.0/mo-0.47.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7bc568cea406d0f8b9375e543c25aa72dfb8d2f7f3414b177bd61dca40fbf24a"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
