class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.110.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "3dcc0741e6892cc9ffe2ad87b3eecb332a12740710fa489a7ea012213c9addd9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "111d9479d121505a2a35446781dbe2037fc991feffebcd6cd8f15e108ee3107a"
  end

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
