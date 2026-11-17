class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.194.0/mo-0.194.0-x86_64-apple-darwin.tar.gz"
      sha256 "7c12c69687cbcc4dc03fdfbf4ee741b9904fe276c4932a489510618eb398d74b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.194.0/mo-0.194.0-aarch64-apple-darwin.tar.gz"
      sha256 "7b470f22e9b5cadc1d4ae0fb6d28f5bca6067f574073becbd9063b3d05a33eef"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.194.0/mo-0.194.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19de55a6b40700bc1f0928defaa77c812be75d55788e2d5ddf604b305d8666db"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.194.0/mo-0.194.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "45ca016ddb6514156f05497ae1416b99010bcc0e2c8080692c9e6ebcba587f6d"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
