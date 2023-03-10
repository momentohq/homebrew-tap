class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.36.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.36.0/momento-cli-0.36.0.x86_64-apple-darwin.tar.gz"
      sha256 "6ae5393f7ab5424dd30d40eff4218837f0a5c22e49c6ca6df840b4c16b406168"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.36.0/momento-cli-0.36.0.aarch64-apple-darwin.tar.gz"
      sha256 "3c26ae8e415f36d9e1c742e9bbe3d6490c47b1e0e8b728e94e4efcd0ebb8ce49"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.36.0/momento-cli-0.36.0.linux_x86_64.tar.gz"
      sha256 "e1ebe67a687138e7b4ac4f69e4ee93bbac471624ba58b930da471728e6bf489d"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.36.0/momento-cli-0.36.0.linux_aarch64.tar.gz"
      sha256 "c58b51b5d23254611e172ce57d80b97d496199958de7a3c80a6f0981c4cb4b35"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
