class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.134.1/mo-0.134.1-x86_64-apple-darwin.tar.gz"
      sha256 "087b694f5328ce78f7798a4f88018cf774fdf64b2779d2befa199adbb6eb5865"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.134.1/mo-0.134.1-aarch64-apple-darwin.tar.gz"
      sha256 "091994596a12c54603c37a05293d17476bf5bb0b4a59d35394e46c685e23cc74"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.134.1/mo-0.134.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "351c86419c161aa7b2c59e40bc6e6f9a07050a0187c3eb2572c79849c1c3d2fb"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.134.1/mo-0.134.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3fb63455b43224e976140fe4b6d5b87117569bfa19d50d83059e2fa418eab6b5"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
