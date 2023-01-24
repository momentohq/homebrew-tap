class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.26.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.6/momento-cli-0.26.6.x86_64-apple-darwin.tar.gz"
      sha256 "833edf7a786b4a7c2c47f8e1d9775d3c5552213a07e074f09231276c65139641"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.6/momento-cli-0.26.6.aarch64-apple-darwin.tar.gz"
      sha256 "f6aec7150cdeef20c8bce0ac9cd3c6520d1d9690b2df49f1f311eb9e0caae56a"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.6/momento-cli-0.26.6.linux_x86_64.tar.gz"
      sha256 "ec9019a4e0225a06da8f973abe03a1467627a81db46c3487b787cac44eef174c"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.6/momento-cli-0.26.6.linux_aarch64.tar.gz"
      sha256 "f4b3af645a710e34b82c6aab9e86e3609dd460b5b5677853f67b6a1a9c291919"

      def install
        bin.install "momento"
      end
    end
  end
end
