class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.110.0/mo-0.110.0-x86_64-apple-darwin.tar.gz"
      sha256 "465214b16cee84ed574924038e3a765020f0b1a020193882441f28f12282ec36"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.110.0/mo-0.110.0-aarch64-apple-darwin.tar.gz"
      sha256 "ba755ba613b09b9daadc8e99ace52705a48f169f1357b5b78aa55b0e92a83698"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.110.0/mo-0.110.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b33cceb99fd4703b7f03236c50cacfe2ef42e356db7c42a68e19b9e6815ac408"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.110.0/mo-0.110.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5289fb40b71673fce43fe92d99a9eed481a6e7a6c15f86cc81fd5dbd612ae1b0"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
