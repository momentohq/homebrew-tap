class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.29.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.29.0/momento-cli-0.29.0.x86_64-apple-darwin.tar.gz"
      sha256 "e868665804cc58d5a55bae89fde75b2761bc28dc5712e475a3d2ebec6d8bb12a"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.29.0/momento-cli-0.29.0.aarch64-apple-darwin.tar.gz"
      sha256 "53342fe7b192b6a2b7d75bf875d7888846545c4a5fd1a9c3a4e7b28226cc3a76"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.29.0/momento-cli-0.29.0.linux_x86_64.tar.gz"
      sha256 "3a8a4bd8aced6f830ecb0d2f640f57eb6f1a12521d4c488d103adc3425546782"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.29.0/momento-cli-0.29.0.linux_aarch64.tar.gz"
      sha256 "8a6d4d456ce68ac0667d254a17ee61fc834743153f7caae7d5221a6b479ca7c3"

      def install
        bin.install "momento"
      end
    end
  end
end
