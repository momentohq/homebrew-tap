class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.182.2/mo-0.182.2-x86_64-apple-darwin.tar.gz"
      sha256 "99c168fc119f967fbab5a321212c931ea60ed0a428c983ca44b7802092f95132"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.182.2/mo-0.182.2-aarch64-apple-darwin.tar.gz"
      sha256 "641547b8cffad84ddf60c699025c5930f028f7557c79c679cfc348cfecb146de"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.182.2/mo-0.182.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc06ae1a229e9fe682ad09b6d12b24dc9157011b57a75bad2263126ccf203fdf"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.182.2/mo-0.182.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ccdc2155c63ec3b3c000a0c53afa22b20b45ca2ee416b62c294275cfd26f985"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
