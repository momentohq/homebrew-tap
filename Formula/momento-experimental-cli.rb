class MomentoExperimentalCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
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
        bin.install "target/x86_64-unknown-linux-gnu/release/momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/mac-silicon-homebrew-test/momento-cli-mac-silicon-homebrew-test-aarch64-macos.tar.xz"
      sha256 "71e35fe96baf2723e9931856c551e0460fc90ffb191db80765b2ad7d11c18f5c"

      def install
        bin.install "target/aarch64-unknown-linux-gnu/release/momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.25.4/momento-cli-0.25.4.linux_x86_64.tar.gz"
      sha256 "f342cb0362f897831dc04274512a587559e0bb8f3c86b719831fa1f60c880dc9"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.25.4/momento-cli-0.25.4.linux_aarch64.tar.gz"
      sha256 "3ba167d3a84c19f8f3f82e105fe1aa1e2d50b167ee6b4d4cbf6d4c1bf685c834"

      def install
        bin.install "momento"
      end
    end
  end
end
