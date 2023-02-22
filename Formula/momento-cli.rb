class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.33.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.33.0/momento-cli-0.33.0.x86_64-apple-darwin.tar.gz"
      sha256 "de155ab18773da34411539309e7950ddb9637a1beb3285830f31200414c3f82d"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.33.0/momento-cli-0.33.0.aarch64-apple-darwin.tar.gz"
      sha256 "abfd2256907305902861c91eb49695708084dc68a5b37e1ca80a42192fae5156"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.33.0/momento-cli-0.33.0.linux_x86_64.tar.gz"
      sha256 "970df4db86de07b9da2532c7979b173b23529c3d245979ea6774023ea9cb7ad2"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.33.0/momento-cli-0.33.0.linux_aarch64.tar.gz"
      sha256 "25b04b5864f20fc7b6a68d84a4d45f8c60453f40db92a64bb780a108187b436f"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
