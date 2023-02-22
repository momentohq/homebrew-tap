class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.32.0"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.32.0"
    sha256 cellar: :any_skip_relocation, monterey:     "1d6d66c903721166e157ac060bd644f2293e1bbc487ca8596e67a54a22966a85"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ab188c66499e488bedfcf8cd81a447b76119601198eafb0d308759dcb579a4a8"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.32.0/momento-cli-0.32.0.x86_64-apple-darwin.tar.gz"
      sha256 "68d2a8224ca56c5c034acfadad49ac1f37e35aa2438ae13d6c65b69946037c61"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.32.0/momento-cli-0.32.0.aarch64-apple-darwin.tar.gz"
      sha256 "cf1fb235e84663d469c6577ab8a2feea610b5cd9e65a22f5b544420d9f42cb15"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.32.0/momento-cli-0.32.0.linux_x86_64.tar.gz"
      sha256 "4806c044aa765ac5fd6ff387eaa5ffdfc07fa55fa152d0a9b216b3bcd143d88e"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.32.0/momento-cli-0.32.0.linux_aarch64.tar.gz"
      sha256 "bcfe505f24ee2af810d257c8540f030035f88d70888238550cef55db3d231daf"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
