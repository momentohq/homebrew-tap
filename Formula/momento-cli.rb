class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.49.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.3/momento-cli-0.49.3.x86_64-apple-darwin.tar.gz"
      sha256 "037db3a8578e2303ed8f478cacad99c1bbbe40bd9310892b884dcd424a92fb8e"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.3/momento-cli-0.49.3.aarch64-apple-darwin.tar.gz"
      sha256 "fbde2771f4037a0b28e468fd0c585c422199bb7bc6483e158d79df764ee17c8c"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.3/momento-cli-0.49.3.linux_x86_64.tar.gz"
      sha256 "02def6898250704db451efbc7cee222961d8edf035dcac144d3bc69b5b27fbff"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.3/momento-cli-0.49.3.linux_aarch64.tar.gz"
      sha256 "74c1b90f8d3a9e73b24c8fbc2902b800ee87fbd49913c78c4cf59799ededcaa1"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
