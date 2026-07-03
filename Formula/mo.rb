class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.22.0/mo-0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "9ac6af324d52b19af89ba012fdde68b1290619edf5c66e7ec48857d576946899"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.22.0/mo-0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "e28f4b280157f5b706ad68f5847dffff59368311c72226831440dda30e8fa68c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.22.0/mo-0.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7549bb8a4395707b8035c883999ec4aa57ea048f940eab54f896de1498d4c54c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.22.0/mo-0.22.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad036385f041f8c34462fd305ecdd9c3119de0e28c95bf3bc6a04784de15620e"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
