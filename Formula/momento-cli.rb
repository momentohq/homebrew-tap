class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.26.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.0/momento-cli-0.26.0.x86_64-apple-darwin.tar.gz"
      sha256 "567550f8b2657484c47ff6ad908124e9703e1ccc812688db5fef457249dc9b2c"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.0/momento-cli-0.26.0.aarch64-apple-darwin.tar.gz"
      sha256 "2a194430263098b08f383e18fb5012f5666104c620bbb93ed46e869dfbb38160"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.0/momento-cli-0.26.0.linux_x86_64.tar.gz"
      sha256 "a80da662f2812a4751d79c480ac3edaf29b9aa950c94824ba05ed3128b697853"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.0/momento-cli-0.26.0.linux_aarch64.tar.gz"
      sha256 "5db505255a434e947a49b87bb3415ef668741cac32f84016dbe7432faebc74aa"

      def install
        bin.install "momento"
      end
    end
  end
end
