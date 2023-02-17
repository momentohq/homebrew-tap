class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.30.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.0/momento-cli-0.30.0.x86_64-apple-darwin.tar.gz"
      sha256 "f69ab1941bd6615982f0823d33d5c14631fb828fe793b19ae4501c91de86485e"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.0/momento-cli-0.30.0.aarch64-apple-darwin.tar.gz"
      sha256 "1ff072d0ae71cb05a8db1e643ed1d915c29dcc5cb3b237c7e781cc96d4bfc53f"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.0/momento-cli-0.30.0.linux_x86_64.tar.gz"
      sha256 "71e7f0beff4b6fd667f331b2a158a5ee6e552629eac73d28a1cfafec9512e535"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.0/momento-cli-0.30.0.linux_aarch64.tar.gz"
      sha256 "8b8db856c233d8f6d29e0ab4668c341377d8f8d2b53d03d122770d70f13949f7"

      def install
        bin.install "momento"
      end
    end
  end
end
