class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.30.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.1/momento-cli-0.30.1.x86_64-apple-darwin.tar.gz"
      sha256 "8011d975416338100a5e15d2f8b0dc55f37d64c16257a339a2e11a06a9005ab5"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.1/momento-cli-0.30.1.aarch64-apple-darwin.tar.gz"
      sha256 "79ae8cb8f1768b8bc2ec4f1d2b7eae01a6815e50653caabdd85dd525c22e764f"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.1/momento-cli-0.30.1.linux_x86_64.tar.gz"
      sha256 "8699b3f64073828720ed3c342abec5a374a9797b054ccf1348fac30822fee177"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.1/momento-cli-0.30.1.linux_aarch64.tar.gz"
      sha256 "675481a393542214b256e00136c5ffad7048d54f430f4d402a217d4e13377c18"

      def install
        bin.install "momento"
      end
    end
  end
end
