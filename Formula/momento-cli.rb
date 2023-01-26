class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.27.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.27.0/momento-cli-0.27.0.x86_64-apple-darwin.tar.gz"
      sha256 "3bb2c26b07382271b81cca12cb74503bb451777f3636fc6aed5b545f5ad49f5d"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.27.0/momento-cli-0.27.0.aarch64-apple-darwin.tar.gz"
      sha256 "7dbdbc4c87bd20c4303e214a3fc6be1e92c55e15dfb62c0ce2533f73842fecd3"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.27.0/momento-cli-0.27.0.linux_x86_64.tar.gz"
      sha256 "6e0c88aeb361c76774c670ba13b984afba206b797b8cf695e8229c8072132c14"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.27.0/momento-cli-0.27.0.linux_aarch64.tar.gz"
      sha256 "98dfa844dbd666f834b339ef2bebc95e09591f2857246ed6352a5221c74af43d"

      def install
        bin.install "momento"
      end
    end
  end
end
