class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.42.0/mo-0.42.0-x86_64-apple-darwin.tar.gz"
      sha256 "f48db104c62b3df83da6d110eafa3434d482dfd5afc69a5ff8bd8dafad9540d9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.42.0/mo-0.42.0-aarch64-apple-darwin.tar.gz"
      sha256 "a68d35ff60f97f5fa0bb4e3474fef533d1fd0162697bb69d5a3c6cb39d7db254"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.42.0/mo-0.42.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23140ddc817faceea45a55c4557f5966b23925dcec1ff5ae9459ea4fd6282a1e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.42.0/mo-0.42.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4e51a7e5f87f34a670cf33357016041f39a83a811119ab2a9cb00c7b21fca6ac"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
