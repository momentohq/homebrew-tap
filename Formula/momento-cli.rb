class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.41.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.2/momento-cli-0.41.2.x86_64-apple-darwin.tar.gz"
      sha256 "68f4f589261b8529cf1e31da85b5ac1a2805e5a406847bbe2961b7fe1ea0f579"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.2/momento-cli-0.41.2.aarch64-apple-darwin.tar.gz"
      sha256 "02acd2ed86580592a0b3d772cfafb90e1d1924fa1323cba4c2297ce9f699fd98"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.2/momento-cli-0.41.2.linux_x86_64.tar.gz"
      sha256 "1191cb86886b6abd858c84b047ae6b710d75141d433ea9b87e6d2cce4e674f4a"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.2/momento-cli-0.41.2.linux_aarch64.tar.gz"
      sha256 "d6a0981ac1012462a815fa66a3640c87dc0a6762cbd511fb6b34b425a7e2dcd2"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
