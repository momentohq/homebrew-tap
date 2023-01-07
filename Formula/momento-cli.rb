class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.26.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.4/momento-cli-0.26.4.x86_64-apple-darwin.tar.gz"
      sha256 "872c130ab4f06557d4bfb5b6a2598b570ebca2c6476345ca0f37752a8e3f9863"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.4/momento-cli-0.26.4.aarch64-apple-darwin.tar.gz"
      sha256 "06c16d1d311dfa63bd1ff8bf03d7ca7d1e8ab1b318a00983dd5ac663e0005cea"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.4/momento-cli-0.26.4.linux_x86_64.tar.gz"
      sha256 "fc639b18d96377d8bb0ae9ee5759c71a466c8d4dc32251725f667203ea077162"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.4/momento-cli-0.26.4.linux_aarch64.tar.gz"
      sha256 "9297e253fd0b5c4436619fca00d09734ab5eb893007d8f6561c245af4522ee3b"

      def install
        bin.install "momento"
      end
    end
  end
end
