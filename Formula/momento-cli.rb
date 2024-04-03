class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.42.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.1/momento-cli-0.42.1.x86_64-apple-darwin.tar.gz"
      sha256 "3f83974f102080914d169b4f34306d626e14f206c873afc52804ff6aa9470ee1"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.1/momento-cli-0.42.1.aarch64-apple-darwin.tar.gz"
      sha256 "c72813957edadf2b9f91785557c4dbbe3990b24fe67f82fce33d7cfa9dfb8151"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.1/momento-cli-0.42.1.linux_x86_64.tar.gz"
      sha256 "1df36854fed239c77572af4278fb51c18bee38f7404ef494783663a94c85a693"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.1/momento-cli-0.42.1.linux_aarch64.tar.gz"
      sha256 "34553e602372bd1b5dbb1fa56be1b97c78aad73b355a4a800e7c6d2bb6f637a4"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
