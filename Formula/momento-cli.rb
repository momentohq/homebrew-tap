class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.41.0"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.41.0"
    sha256 cellar: :any_skip_relocation, monterey:     "883deac53fe5104c34577b70193f9cf39dc0f612c263d31e2e46b5b2ea1d1fb9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "72c67d2a62e64580a664dca8234cdc7ebcf62d39d673fa6e98f5dc0754f3beb6"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.0/momento-cli-0.41.0.x86_64-apple-darwin.tar.gz"
      sha256 "122763aeb485018353ef553087dae868cfb9824a8bfb8d1c0b3c5b329970e425"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.0/momento-cli-0.41.0.aarch64-apple-darwin.tar.gz"
      sha256 "cd98962531908485d36abd7b77e2f9cd14a2d4911a14c9b1a27077e8d7f26387"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.0/momento-cli-0.41.0.linux_x86_64.tar.gz"
      sha256 "2a1c66f8b82d9f18e1cc9b767e1b386fbe2cefa722d7e67e13aa6ab32d070e47"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.0/momento-cli-0.41.0.linux_aarch64.tar.gz"
      sha256 "7d51bee104e3e2576e76a558562cfd9d903edee3e108b7f25cae1f8fb74a35d3"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
