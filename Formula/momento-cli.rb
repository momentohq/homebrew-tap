class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.41.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.8/momento-cli-0.41.8.x86_64-apple-darwin.tar.gz"
      sha256 "d21c13044df6c32dd72be359549ba492e49dc4888b79b7ee375b4c29f30bc859"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.8/momento-cli-0.41.8.aarch64-apple-darwin.tar.gz"
      sha256 "e374521827a1b86316a925ddd485b1c43632468f2b024e740be5b284da5bf344"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.8/momento-cli-0.41.8.linux_x86_64.tar.gz"
      sha256 "7dd7e1e67988f44513ba39c1274d8347071c74bfa37e6e9f63ebfa6b7f5fa87e"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.8/momento-cli-0.41.8.linux_aarch64.tar.gz"
      sha256 "c957b1713148a63e99b83feb6b8efdcce49948072406a7d328b2695a07214eef"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
