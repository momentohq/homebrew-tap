class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.46.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.46.0/momento-cli-0.46.0.x86_64-apple-darwin.tar.gz"
      sha256 "488b77de79ffa37765002920efc0998d5abdab167acbcb29b4f47147198ae668"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.46.0/momento-cli-0.46.0.aarch64-apple-darwin.tar.gz"
      sha256 "bb4d6cef8fda8dd4bb885ce7f04eff698dd4672201bd965ee72374dc9303a7ca"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.46.0/momento-cli-0.46.0.linux_x86_64.tar.gz"
      sha256 "2732d979e43e6cd75ee9d3a7eeef545a47bfa1794b99b15d884ed9b41f7d593f"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.46.0/momento-cli-0.46.0.linux_aarch64.tar.gz"
      sha256 "85d2acd904bf6b4822789382d97704ac16c335f81ebae4619a7305ba8bbd8812"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
