class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.38.1"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.38.1"
    sha256 cellar: :any_skip_relocation, monterey:     "560d76b458da1e83dcde3b5d77287532f34b3377c4bfaddcfa0b4db7d9fa93ce"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7b851fc10da7c8aa85d399c27614877f9f0622334ceec044d84324cf6f9cd121"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.38.1/momento-cli-0.38.1.x86_64-apple-darwin.tar.gz"
      sha256 "28a666e46859dfec490189d45e0c8882665b2152745ffef35f87a6543f48df89"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.38.1/momento-cli-0.38.1.aarch64-apple-darwin.tar.gz"
      sha256 "e77ccb72e7f94b50fd3c16113c8b78295cd93690f60e9eca64c3ae59810ef71d"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.38.1/momento-cli-0.38.1.linux_x86_64.tar.gz"
      sha256 "c2d62fdcd90263b4444af0df74baa421aae8b56a3dd1b1f4334f2b7cbfef3f7c"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.38.1/momento-cli-0.38.1.linux_aarch64.tar.gz"
      sha256 "6d3e877c31d436ef42612b18277e9c44cb1b47fb9eed5ac5a669c0374e3d9455"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
