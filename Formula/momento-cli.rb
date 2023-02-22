class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.31.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.31.1/momento-cli-0.31.1.x86_64-apple-darwin.tar.gz"
      sha256 "1848b98c054b8def2ca8953d17559fab94fb287a1c03a3e8cd1456fac206f3ef"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.31.1/momento-cli-0.31.1.aarch64-apple-darwin.tar.gz"
      sha256 "c2f7478a85ac50359de2f7a53587981838f16bef7013a3b5a6f0842af453004e"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.31.1/momento-cli-0.31.1.linux_x86_64.tar.gz"
      sha256 "91b1b939985efa0bd2d3e73b32320daa4887fabc570bcff6db1ecb674425b93c"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.31.1/momento-cli-0.31.1.linux_aarch64.tar.gz"
      sha256 "bb9a96b52f857b27cd8695b50df9d759729e2aafa1144351fdc32fe647a346e3"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
