class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.197.1/mo-0.197.1-x86_64-apple-darwin.tar.gz"
      sha256 "135963dcd1497837120d6daa9d2bb2c86e00291ad233f7f60f5c64d4f4185b86"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.197.1/mo-0.197.1-aarch64-apple-darwin.tar.gz"
      sha256 "c97ce52a7d2c0e59436ab6667c33b9c9838344614a80883a88cfb3ecea750dac"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.197.1/mo-0.197.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95db69452b642979aa379ae7901386b8b854a03db19476976c9e5b38a245b4b5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.197.1/mo-0.197.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9613d5f7fb8119ffa6587b08ac97ef13fe1c080015ad5c91103629c0e1b99b91"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
