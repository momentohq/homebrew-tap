class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.26.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.1/momento-cli-0.26.1.x86_64-apple-darwin.tar.gz"
      sha256 "a638d12ffad65404549dbc127158ac4f9a32f5929dcbc6e166f5bcd41c98b39c"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.1/momento-cli-0.26.1.aarch64-apple-darwin.tar.gz"
      sha256 "a00e8a1d2f300321175508ab7d9663b4487e3b921f035b04109603f28252c531"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.1/momento-cli-0.26.1.linux_x86_64.tar.gz"
      sha256 "37edd3a40242634c0ec583a90b5de95f73fe0dbce2bf5b70e8ae0f95440661cf"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.1/momento-cli-0.26.1.linux_aarch64.tar.gz"
      sha256 "59386fecbb0099cfe5e2bcea372ea9c54c0fbf76aa15da8ac1f7a2ac81bcf430"

      def install
        bin.install "momento"
      end
    end
  end
end
