class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.25.0/mo-0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "20222fe132af0ff064cca6dbbf1e04dffc63aa6679b85a5d5f25d5e7f955e35d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.25.0/mo-0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "f6ea61730b4a2f79c12745dfdb5bf1803375f0a745062e8b664248b5aae45687"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.25.0/mo-0.25.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0fa7c8f75937f9aae92d9995d0f80bebb1617dff23b6cc174acdcc3218937365"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.25.0/mo-0.25.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a2d92e2ca41ee697b17d289d8f121f6cc5a33a06b5efd062217c7052efdeeb37"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
