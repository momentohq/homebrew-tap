class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.26.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.3/momento-cli-0.26.3.x86_64-apple-darwin.tar.gz"
      sha256 "5c8d86053d14447309fdb4c7356da51100ad3a9f1ec7a8ea24812d0a3c1956b6"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.3/momento-cli-0.26.3.aarch64-apple-darwin.tar.gz"
      sha256 "04bff03e4e0d2eb44f772e3c7df3dc2a19053bdb56398822d27402ef18380f47"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.3/momento-cli-0.26.3.linux_x86_64.tar.gz"
      sha256 "ad0c9c2e57ad1dcaa278985440244983267dc897af6cac497a2128bcbfc6f833"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.3/momento-cli-0.26.3.linux_aarch64.tar.gz"
      sha256 "e1abdccb60e2d66841be85a9af4bbf2d96f5f9df61833f0d2297ef00c6b91211"

      def install
        bin.install "momento"
      end
    end
  end
end
