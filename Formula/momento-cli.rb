class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.48.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.48.0/momento-cli-0.48.0.x86_64-apple-darwin.tar.gz"
      sha256 "3f61ef0b3118f2c10b86157bc6841928807f1d09d6399ef101c4846f875ee259"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.48.0/momento-cli-0.48.0.aarch64-apple-darwin.tar.gz"
      sha256 "2d3a7df629da0f53f2e7c6d93e1d9ef0f06169c1b1a3ec044cef8585a079d71b"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.48.0/momento-cli-0.48.0.linux_x86_64.tar.gz"
      sha256 "3c32eb4b9213df71054b0972d6d3f42c58328306650ef0b771387ccadfbf88f3"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.48.0/momento-cli-0.48.0.linux_aarch64.tar.gz"
      sha256 "5ac129652613fb734844056a1020fe93f68c548a22267e69130b9f15095ca5b4"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
