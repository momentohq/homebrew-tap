class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.42.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.8/momento-cli-0.42.8.x86_64-apple-darwin.tar.gz"
      sha256 "030877b28f571c4dcbafbe60998de3f0905572f97a480b9d33f3b440f541702c"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.8/momento-cli-0.42.8.aarch64-apple-darwin.tar.gz"
      sha256 "0c2910d5e8a5b6e0bf0eeac40a558afc7855c4e56233b772d6370ee9c6251e92"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.8/momento-cli-0.42.8.linux_x86_64.tar.gz"
      sha256 "8f6eca3b051f0da4276ddc654cc409c3966c29f2b604dd3b8ad1e38b8eece2e8"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.8/momento-cli-0.42.8.linux_aarch64.tar.gz"
      sha256 "7ba268da27d82eb800541e97729f673ba0503c392f5044d7339392af048d5285"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
