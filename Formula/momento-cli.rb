class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.37.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.37.1/momento-cli-0.37.1.x86_64-apple-darwin.tar.gz"
      sha256 "aa0d03f6e04771be2ed3c5c11b66a0a594661ee8115ddd540bf6877bf019ccd6"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.37.1/momento-cli-0.37.1.aarch64-apple-darwin.tar.gz"
      sha256 "ed560f434487dd9ded7f2ffeda53197a5a73880476ae3b91efa4ac0e8bebccd7"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.37.1/momento-cli-0.37.1.linux_x86_64.tar.gz"
      sha256 "796e68bf667fd88c425a3b8ef2ac1cffff6107795c95c4b4f3e19c1399b06a38"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.37.1/momento-cli-0.37.1.linux_aarch64.tar.gz"
      sha256 "b771e836fa9c86e1ddc67d0c37e716963ac67552252e6c28a9c9b2fcf5bc3c70"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
