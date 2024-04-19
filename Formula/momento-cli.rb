class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.42.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.7/momento-cli-0.42.7.x86_64-apple-darwin.tar.gz"
      sha256 "8455ff7c3b33199c15031a54579fd344eea2eb30d12a1e95314101396b373118"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.7/momento-cli-0.42.7.aarch64-apple-darwin.tar.gz"
      sha256 "d350fd25a33de307e60a311d8e07949b16d937774aa41b1960a7500984076c97"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.7/momento-cli-0.42.7.linux_x86_64.tar.gz"
      sha256 "2d0ffb5690d3541a1b87625a2ee2012588da57e06d37252dd4831ae1a5801edd"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.7/momento-cli-0.42.7.linux_aarch64.tar.gz"
      sha256 "8850a4638e7535f55c99ca26b7a1d24e228e3bcaa318070987330a96bda44aad"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
