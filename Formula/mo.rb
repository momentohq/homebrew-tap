class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.50.0/mo-0.50.0-x86_64-apple-darwin.tar.gz"
      sha256 "2539a3645e2584218bdfb64d9a3ad08b01bcb552d5308f397f17a2b456bb8dd5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.50.0/mo-0.50.0-aarch64-apple-darwin.tar.gz"
      sha256 "e71ba8ab4e17ecd85ee5704442508955a9508e65f066b049a35ad552d8eb42c4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.50.0/mo-0.50.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae166ec7bff7e2523f961cb0c48360ed60d0da5a39647f9ce4f78bfe45777561"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.50.0/mo-0.50.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "60514dfedaf439f81fea5dd033b04c1ec69fa2db361fa12a9f620058632f3367"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
