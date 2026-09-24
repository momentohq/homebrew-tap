class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.145.0/mo-0.145.0-x86_64-apple-darwin.tar.gz"
      sha256 "768a8f5fbcd0bb2331e2353b84971dfff37be18cfb578ee635261d26cd5e98df"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.145.0/mo-0.145.0-aarch64-apple-darwin.tar.gz"
      sha256 "1b97ecee4d9ca76df2057126a5e976c1356183cf9ff60a259138b96dff42e9a2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.145.0/mo-0.145.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2881e06cc6b87aa7b7341a972dbbddbc999a4cf1cc5a121cbe5c0de6f3b94410"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.145.0/mo-0.145.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c6e042884a8531c7a74f13a24f62cfff0cdd756535c95a49ae5c472eba453518"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
