class MomentoExperimentalCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.25.4"
  # url "https://github.com/momentohq/momento-cli/releases/download/v0.25.4/archive-0.25.4.tar.gz"
  # sha256 "46732f59df3047179d63b639445197d6d5a828237f5b04b04fa993db17fb0f85"
  # head "https://github.com/momentohq/momento-cli.git"

  # bottle do
  #   root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.25.4"
  #   sha256 cellar: :any_skip_relocation, monterey:
  # "13df2ba373237c9b190c917fc5f6c86306cf4bc4987f28c2c84a06530628487d"
  #   sha256 cellar: :any_skip_relocation, x86_64_linux:
  # "1e82288f298640116e35f918d8b8a203350ea71ae7590bb570e916ecbf366c2a"
  # end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/mac-silicon-homebrew-test/momento-cli-mac-silicon-homebrew-test-x86_64-macos.tar.xz"
      sha256 "412b123121272e06606072c39218a330b550253059bc87e60e755255625c42e5"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/mac-silicon-homebrew-test/momento-cli-mac-silicon-homebrew-test-aarch64-macos.tar.xz"
      sha256 "71e35fe96baf2723e9931856c551e0460fc90ffb191db80765b2ad7d11c18f5c"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.25.5/momento-cli-0.25.5.linux_x86_64.tar.gz"
      sha256 "175004e8cc9c681ea54108ebf485d93ec111e11f6c93e8ca827bd76a7fec2ae0"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.25.5/momento-cli-0.25.5.linux_aarch64.tar.gz"
      sha256 "9fa6b3fa8c4bb7a84b550149ab014f51e40ce2bd85f943794a72217780850f7d"

      def install
        bin.install "momento"
      end
    end
  end
end
