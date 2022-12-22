class MomentoExperimentalCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version ""

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.25.6/momento-cli-0.25.6.x86_64-apple-darwin.tar.gz"
      sha256 "64436776284d3d64b2245435af4830e805e759ddf50f973b906285a9fdcd1a63"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.25.6/momento-cli-0.25.6.aarch64-apple-darwin.tar.gz"
      sha256 "802302e434ed9a373b24922e2ae53c3f39fb6e296f7bc03b1eb5e025e768cef5"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.25.6/momento-cli-0.25.6.linux_x86_64.tar.gz"
      sha256 "3858fbe100a92ae9f6b4d6500dbf579926a0f3f20d3e05e0bd666fa82608347a"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.25.6/momento-cli-0.25.6.linux_aarch64.tar.gz"
      sha256 "85f704cbdbecbc49413ad422d11d18d19286ae6a3e6f563201e52c0028dec99c"

      def install
        bin.install "momento"
      end
    end
  end
end
