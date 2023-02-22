class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.33.0"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.33.0"
    sha256 cellar: :any_skip_relocation, monterey:     "4ed1d0e9d226309488da4940b3f1e3c8774a165e66800fef455eb7e25664128b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "84f8aabb8abec2c8394b419e658477509ff8f6b54e2197d7b9fa144b6c4572fa"
  end

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
