class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.34.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.34.0/momento-cli-0.34.0.x86_64-apple-darwin.tar.gz"
      sha256 "b05417eefab9c73cbde4f8e731ed336b527527ab6e63ecff5dbf27ab722b1e63"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.34.0/momento-cli-0.34.0.aarch64-apple-darwin.tar.gz"
      sha256 "0988dad8d6425b8a8a079fbe1596fc5f90d7afecc9a7474d73052c74372a9d3f"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.34.0/momento-cli-0.34.0.linux_x86_64.tar.gz"
      sha256 "c693134213845111b2417f6910419328b193c875c355d92e136505452ad1aa82"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.34.0/momento-cli-0.34.0.linux_aarch64.tar.gz"
      sha256 "288e22cfb4af8f191dc8cdb0009d6f814b376485d761520b7ab7f38a31984474"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
