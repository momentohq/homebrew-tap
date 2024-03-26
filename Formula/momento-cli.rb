class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.41.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.7/momento-cli-0.41.7.x86_64-apple-darwin.tar.gz"
      sha256 "07e22a581742ce9721354f63218a717085db507e0b5c4a099e802c9a84c18462"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.7/momento-cli-0.41.7.aarch64-apple-darwin.tar.gz"
      sha256 "480c2ab868fe351fc5c890c849cddfa12cb819070d0b81c38298d9dbf9b6075f"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.7/momento-cli-0.41.7.linux_x86_64.tar.gz"
      sha256 "5387ef9ee50cff3baf990103c2f522e641dbaaa07ddac82940c9fbc06c651d03"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.7/momento-cli-0.41.7.linux_aarch64.tar.gz"
      sha256 "8f7a5c607fd9d694f62efefc132bd13c0d3b2319312eca42e64c186ad7e4dad8"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
