class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.30.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.3/momento-cli-0.30.3.x86_64-apple-darwin.tar.gz"
      sha256 "f25665b77044711efff25bec1227e346fb5bcdb79baf3d040f1491954591207a"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.3/momento-cli-0.30.3.aarch64-apple-darwin.tar.gz"
      sha256 "1a53c2939a5bf747f7ad23354be27faa092be1ab90c01698e2248524e12e7de8"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.3/momento-cli-0.30.3.linux_x86_64.tar.gz"
      sha256 "af7f3b65cf9a7ace0e14a2cd10537f609cf4e8109ebee9261714fa5c5419cb63"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.3/momento-cli-0.30.3.linux_aarch64.tar.gz"
      sha256 "4d94fa2c78360257a48b736428b54fe9b25d1acded16b93ba34c3770e3b64e3a"

      def install
        bin.install "momento"
      end
    end
  end
end
