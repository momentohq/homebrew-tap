class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.45.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.45.1/momento-cli-0.45.1.x86_64-apple-darwin.tar.gz"
      sha256 "bffededfeac22ef2123b5728d71e8f30068a9597b05203f9e297cd1a5d630abf"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.45.1/momento-cli-0.45.1.aarch64-apple-darwin.tar.gz"
      sha256 "17c1c0c0517532b0025644e5c360f57269919fa70545110187c2f133740d88f8"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.45.1/momento-cli-0.45.1.linux_x86_64.tar.gz"
      sha256 "7a2f37070364b5f36c685b12e820475aedf4a2918eb027494cbf92bbb0889527"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.45.1/momento-cli-0.45.1.linux_aarch64.tar.gz"
      sha256 "dd62f30f737f077f21a198586fca20e404ccb39fd55f699c1f3ba66ed460ffbd"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
