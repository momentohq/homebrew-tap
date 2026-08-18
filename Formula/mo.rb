class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.107.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "29ccbc7fe752c0efec961087154405a944df4d9d94951cc4645e4f4a174bfbd1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "61c99adb170bfd5b3284ae9ba3c035ec252d0b561d077c39d3d7d49e65a33364"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.107.0/mo-0.107.0-x86_64-apple-darwin.tar.gz"
      sha256 "c7b7e199c97435cbd652e3ec578a7b85863f66f942ede50dbeaeedd13dbcad6c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.107.0/mo-0.107.0-aarch64-apple-darwin.tar.gz"
      sha256 "5d6ffee84d465ac29532e64e7c0310b9bf24d08ecfc75d643d472c28f0acdb4f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.107.0/mo-0.107.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "947db8b3ff1d9871bca0cf4098da12c6d4fef3afeb7d7070127fd02f792e625f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.107.0/mo-0.107.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38c5a3c0bd8c6ab745b4d71347d8d9ee75c4d3c4d02c496059688c8aca693386"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
