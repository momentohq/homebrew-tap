class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.41.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.4/momento-cli-0.41.4.x86_64-apple-darwin.tar.gz"
      sha256 "61a56b86c1d5121a4332ae281b88195817ab9f5b504a907a76e0329b8683bf11"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.4/momento-cli-0.41.4.aarch64-apple-darwin.tar.gz"
      sha256 "09c1ca03096679741a6c29160d0264c7746b33808e43d3c6f1e33f1a7da31495"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.4/momento-cli-0.41.4.linux_x86_64.tar.gz"
      sha256 "3c032ef461267fd0c004b181dae5ee43ae06e08e166425a6926d780bbbcb3352"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.4/momento-cli-0.41.4.linux_aarch64.tar.gz"
      sha256 "7d3a564e313cc432ab7bae027609892f33062452cd47283e4f09fead758eb727"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
