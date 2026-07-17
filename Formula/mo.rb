class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.54.0/mo-0.54.0-x86_64-apple-darwin.tar.gz"
      sha256 "848fa91c3be39b0c71dd3f26eb3465ae737f39293481905b2ca21407ac9a158c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.54.0/mo-0.54.0-aarch64-apple-darwin.tar.gz"
      sha256 "a307bd8674e1c2ce935afee4acfb33ae5e1285739e1e5989e571a14ff732e181"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.54.0/mo-0.54.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f92ef83c38f2bbe0f8ba818c4d336adccd9f7ac1542faf99d4b41e14e108228f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.54.0/mo-0.54.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2710bbbcb2e440539667a82b38689a83e5ffc246b05b62d7e75a056d8d5ed403"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
