class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.52.0/mo-0.52.0-x86_64-apple-darwin.tar.gz"
      sha256 "181d02e73ed2953a405af6fe34abc485f9dc7ba0a581398149c7271e259dbfb3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.52.0/mo-0.52.0-aarch64-apple-darwin.tar.gz"
      sha256 "ea33f2b78f805c2b4fffa9ce6a289d22d0595192a1b0c20547d2131ecfa6df22"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.52.0/mo-0.52.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "004c266cbb2edba8e1a741a498fe121f6b2774b1c027c5cb27d79b6e2cc7f444"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.52.0/mo-0.52.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c8001157f904b36bd84650941ebe210470dfee12f88cdbbab14b675fe343a23"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
