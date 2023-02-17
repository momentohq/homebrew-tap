class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.29.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.29.2/momento-cli-0.29.2.x86_64-apple-darwin.tar.gz"
      sha256 "dd08b93eb4d12ec716b06cc0c5e03218866ed0758fe50206e187cc5d970b77dd"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.29.2/momento-cli-0.29.2.aarch64-apple-darwin.tar.gz"
      sha256 "1f310a7f84ebc6c5fb6ce1519cfb7eb56f7abb914d48ffe5b74c4f50d0cbed7b"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.29.2/momento-cli-0.29.2.linux_x86_64.tar.gz"
      sha256 "e0cf9a26f8625e8eee09c70b186507f65614425526a3fc65e6d9bcce858c1d31"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.29.2/momento-cli-0.29.2.linux_aarch64.tar.gz"
      sha256 "5dc167857e1518098ab167da2fdbd996c2b9349db72332d6095ae45c1e31f7d6"

      def install
        bin.install "momento"
      end
    end
  end
end
