class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.116.0/mo-0.116.0-x86_64-apple-darwin.tar.gz"
      sha256 "a5cd609e3161e2b56d9ddf8abbff031e82e3f2dea6b59364e31d5c60563b5446"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.116.0/mo-0.116.0-aarch64-apple-darwin.tar.gz"
      sha256 "5c90f244862e3b81b96aa6ef81854bc964a928078bfa71532839b065424375b5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.116.0/mo-0.116.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fcb10f08863cbd2af6a8aa03a61aa74801d00090fb43beffc556f22c354b6631"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.116.0/mo-0.116.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a297aec3b7a56e2213b1fb1498b41c0b3ad98f24b80adfb700959cb76f0adcf7"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
