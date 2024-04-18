class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.42.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.3/momento-cli-0.42.3.x86_64-apple-darwin.tar.gz"
      sha256 "77ba43429da5866e23820ba007df46bccb4bb466e389697436e0710e2448c514"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.3/momento-cli-0.42.3.aarch64-apple-darwin.tar.gz"
      sha256 "4f9d6aca97ad9a5d9c1c2bbe3b1483e7cea2633588083b93377334485dcfdb2c"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.3/momento-cli-0.42.3.linux_x86_64.tar.gz"
      sha256 "28d9c0d9021751c33c1884778e2cb4a1ceb62338c45a310bda23c36e66897e65"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.3/momento-cli-0.42.3.linux_aarch64.tar.gz"
      sha256 "3e6e972759464ae8f93f7a3316cf0a4c1863f3fbff59c3c81986abe5172220b3"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
