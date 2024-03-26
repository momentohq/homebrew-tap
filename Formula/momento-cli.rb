class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.41.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.6/momento-cli-0.41.6.x86_64-apple-darwin.tar.gz"
      sha256 "165b81ed5809d49a17f647eea24969f91075a8df8cf757712543247544470064"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.6/momento-cli-0.41.6.aarch64-apple-darwin.tar.gz"
      sha256 "0fa197ef05a34db9766e0318a0adb47bcc987dc3797f3bab10490951889c2c1a"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.6/momento-cli-0.41.6.linux_x86_64.tar.gz"
      sha256 "2b1641795c2577a1cff264d14fb6793a7726784a56d9bc868bba010c8a82361c"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.6/momento-cli-0.41.6.linux_aarch64.tar.gz"
      sha256 "5bf33199dfe7d1babba329f47b32d76a630ae2d0b3b9898753c5a4cba31e563e"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
