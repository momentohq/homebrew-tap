class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.42.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.0/momento-cli-0.42.0.x86_64-apple-darwin.tar.gz"
      sha256 "e6163ba0d989a89cd47753f213fec7bd196fe3a9f621d7a1f6c653fd5829e446"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.0/momento-cli-0.42.0.aarch64-apple-darwin.tar.gz"
      sha256 "e5b04018ab43a1f867eec69e50edc8a86148c94f7e6ca6050158503d9f50d871"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.0/momento-cli-0.42.0.linux_x86_64.tar.gz"
      sha256 "044bffb085ad430202d44a4219bfb284637725fb225872c04acee5271de25df3"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.42.0/momento-cli-0.42.0.linux_aarch64.tar.gz"
      sha256 "c84608678c0118d02e7613cdbe5ca3288ddd4d4ef8096e87edff06f28011985a"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
