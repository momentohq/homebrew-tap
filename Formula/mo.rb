class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.72.0/mo-0.72.0-x86_64-apple-darwin.tar.gz"
      sha256 "90ac0258e3dc0370ac6a4e9f9d0a2100c8945730ed72693999859654aff85918"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.72.0/mo-0.72.0-aarch64-apple-darwin.tar.gz"
      sha256 "b007f368adb81dcd431a9ab5100ec31375f56e6b07f2734bd64b1a795e9e1957"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.72.0/mo-0.72.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d1601395238deb877e5edc5bc6b84b59010cd66c66f659bf1a00c4d76ed4182"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.72.0/mo-0.72.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75efe0abd856d1c2d4feb1b1d358aa5f91eea74b6c9fa1aaa8ef379b203315f1"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
