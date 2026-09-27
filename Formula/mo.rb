class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.149.0/mo-0.149.0-x86_64-apple-darwin.tar.gz"
      sha256 "fdbb48ff33a14db2bdcc65de107244b4e863d14805d066fca211b5bd96d57206"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.149.0/mo-0.149.0-aarch64-apple-darwin.tar.gz"
      sha256 "0f547b952f52871a6e83557de5b9bbc9f5ac70f244406f8259afd6bac61dc237"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.149.0/mo-0.149.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fce637abbca9c6380a6d1295f4f6300eda6bb8cff911e4392228dc82de2678d8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.149.0/mo-0.149.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "39c12713e7bdc2d668ece10fe5a23152e1dd73310a2f8cdaedae4b47e8105c8b"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
