class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.47.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.47.0/momento-cli-0.47.0.x86_64-apple-darwin.tar.gz"
      sha256 "6446415dbcb8b0cb802110b5e6255044cb06f919c223d4e79b90cd3ef1f9b0e4"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.47.0/momento-cli-0.47.0.aarch64-apple-darwin.tar.gz"
      sha256 "ee0607c2e44f820cd29d922cf63d235bb2187b53f76a75bc40a2b08007d0b437"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.47.0/momento-cli-0.47.0.linux_x86_64.tar.gz"
      sha256 "748b20de0ec73c686e6dd22d5d01e351bbed928431e0ff6e1fa78d420052dd34"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.47.0/momento-cli-0.47.0.linux_aarch64.tar.gz"
      sha256 "174dcaa9901389fb20b5cb7aa641eb9df71976434fa2d60393d7a643af01fe8e"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
