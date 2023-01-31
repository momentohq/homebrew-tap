class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.28.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.28.2/momento-cli-0.28.2.x86_64-apple-darwin.tar.gz"
      sha256 "baad55df0583f7f16d898679840552b0e603a844495cd598b1527f61d806f182"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.28.2/momento-cli-0.28.2.aarch64-apple-darwin.tar.gz"
      sha256 "54da407e58d822ea8be676d49ba1faf0d66ba3288d6d8e8987d5348a476a3089"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.28.2/momento-cli-0.28.2.linux_x86_64.tar.gz"
      sha256 "861cb7f1bd6b02d93d9d19117e6231ee776313923df16efbfa5c4ae8ffb63787"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.28.2/momento-cli-0.28.2.linux_aarch64.tar.gz"
      sha256 "e9531cd6f7966cbd21405200018f3117060b8952643367759abcc6176dd163c5"

      def install
        bin.install "momento"
      end
    end
  end
end
