class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.123.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "41dedb1d27a24f62a3a74b58e6283fe269a93eafac8c2ff726676fcd97ff3193"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3faa3707cdcf61e8923921bbb74f5b786bc20d78e0d6937aa10602aeb8bf1307"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.123.0/mo-0.123.0-x86_64-apple-darwin.tar.gz"
      sha256 "ac5619d94a1cdaebcdf47b29428eb992ef55b69b40a02b76a189d29c7c956f04"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.123.0/mo-0.123.0-aarch64-apple-darwin.tar.gz"
      sha256 "9a17323f9646ccbe0db35dcb8c7fa2727ca6c79efeb05954a9e39ec959d810e5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.123.0/mo-0.123.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7578758778342a732359893db636a9439176d951577f68ccc1cb70908043f241"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.123.0/mo-0.123.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5a1514e9542b3d0461309c34f7c78ae66881db8593b8cdf3390f1a9072610199"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
