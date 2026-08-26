class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.124.0/mo-0.124.0-x86_64-apple-darwin.tar.gz"
      sha256 "eacf22c9353b8e8b71fe4fcfe3c5f4164c54163a103d82f6ed67732a596bf131"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.124.0/mo-0.124.0-aarch64-apple-darwin.tar.gz"
      sha256 "ac26aa835ef9ec5968e16b6237a9f5f284b6cbd25cac3c044e1344f62aa3c7d0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.124.0/mo-0.124.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fadbac9d354a0c67afcf53ee29069dbf062d5df66624d901b34ea0d7fdfae4c1"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.124.0/mo-0.124.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9da47ab85ad1f1e7581bfb40c6bdbcbfe70744a04cc1286014182a460df1523f"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
