class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.40.0"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.40.0"
    sha256 cellar: :any_skip_relocation, monterey:     "69d558968112881ba4883994980c8c36960910d2cc78729ce6e42f275e69d558"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3b29f1c5338e80dbb42322a39459bd16bedcd8addb22070e9ed3e0132109c0fc"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.40.0/momento-cli-0.40.0.x86_64-apple-darwin.tar.gz"
      sha256 "8cea8e5de262d377ca0beb599feba549ff862a8c4cd9c50106f5b3062558e293"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.40.0/momento-cli-0.40.0.aarch64-apple-darwin.tar.gz"
      sha256 "d7cce728126fd1bfc2d68190918dafba4f43b852f874ac57e9b424d0fd2bd9e3"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.40.0/momento-cli-0.40.0.linux_x86_64.tar.gz"
      sha256 "1b1b39cb668bbb0b19118ef47a83a1f8a0ece692f06d952b81d10e17cf690e60"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.40.0/momento-cli-0.40.0.linux_aarch64.tar.gz"
      sha256 "2b7b1a6739e867b46f43787950b6240b2b8cd69bbac4f920813de7b73bde5bec"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
