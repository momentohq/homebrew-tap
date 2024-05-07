class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.43.0"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.43.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "15052e5f137d73e1c4d68ce6642be81a02c523bd503cd19f374444850837e3c0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7c87df1e2a8ba8c3f67a682456b58c86c947d62382a0cda14aeec3608763b490"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.43.0/momento-cli-0.43.0.x86_64-apple-darwin.tar.gz"
      sha256 "a51e5b44d735f6689644f73f5eeae465881d3c444df5992a9acd29a58591d3c8"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.43.0/momento-cli-0.43.0.aarch64-apple-darwin.tar.gz"
      sha256 "4035b9744d9242d4c0788928f3e34ff06af765ef6062dd6f851caef677152fbb"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.43.0/momento-cli-0.43.0.linux_x86_64.tar.gz"
      sha256 "460a574055b5ca6467f02df91cd42d192ce285ba6cd3b54c88b68d8c40150f3f"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.43.0/momento-cli-0.43.0.linux_aarch64.tar.gz"
      sha256 "7ee037617a888e771c391afe01a85c9c9112b923eff0d6ac6d7dd2da8cf1b4d1"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
