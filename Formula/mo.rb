class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.165.0/mo-0.165.0-x86_64-apple-darwin.tar.gz"
      sha256 "64d6ccf98908ec8f9c2fccfb2ae42fde40811a12f7175f5cb786aeaf2ecc2af6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.165.0/mo-0.165.0-aarch64-apple-darwin.tar.gz"
      sha256 "b04aaab0ca92c0fd018385601ce07623bc6985a144c26a5d1e4133ec4cc25eef"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.165.0/mo-0.165.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4be07cfa02c69d111607a6972654da7ce3b5d3ced5769dea1214459da46e6709"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.165.0/mo-0.165.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f6e3bc095fc10db479badd769338e196e64f68e2aacfa082e91911b5c3efe207"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
