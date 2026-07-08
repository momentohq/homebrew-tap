class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.35.0/mo-0.35.0-x86_64-apple-darwin.tar.gz"
      sha256 "69902a1702c5e1d00247c25839a569fbfb77b36b67d5a83d680f97f27589e5d5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.35.0/mo-0.35.0-aarch64-apple-darwin.tar.gz"
      sha256 "d5d145eefee5c48475cab47df2906ba7f7b056f09ff89b4a53d390b433be6dd3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.35.0/mo-0.35.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "022669a78da99edb61e8edc1fc4339f2f64ad7df18225fea94975edc2bcad24d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.35.0/mo-0.35.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89a6d5dcebc2f12eb9478224aca7e735b64c71be0b4dbb51c708e3ec4338c4bb"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
