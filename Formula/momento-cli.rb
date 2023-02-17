class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.30.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.2/momento-cli-0.30.2.x86_64-apple-darwin.tar.gz"
      sha256 "615a7a6f0b0039badac8869a9a100ec3057caa7c5327b0785faf2028c0a5a487"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.2/momento-cli-0.30.2.aarch64-apple-darwin.tar.gz"
      sha256 "2c51ae329869919710153c57c46c60c681eeccab6f5aa377fc93b73634348dc6"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.2/momento-cli-0.30.2.linux_x86_64.tar.gz"
      sha256 "7a3ba4ded85f636347f27c29d463a74a00db0cbf73df6d436e015870e8277f0d"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.2/momento-cli-0.30.2.linux_aarch64.tar.gz"
      sha256 "47fc86148ac17eb379aa4c29458e5625573fdfb5f129b50a59b4f7db70a634a1"

      def install
        bin.install "momento"
      end
    end
  end
end
