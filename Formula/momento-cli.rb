class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.49.2"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.49.2"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "86cac4c6cb66a687d2382165a5250a878ce0e4982bb4fb8ad489f021daed8cdd"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "22739be0d8236dd3b2c918bc4532d4eaeef7ac82bf0459e2ba62e94710f11288"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.2/momento-cli-0.49.2.x86_64-apple-darwin.tar.gz"
      sha256 "f340804122bc98273e4a363b041c6cf13b1ddaa32496ffa25a31054e42f20d1b"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.2/momento-cli-0.49.2.aarch64-apple-darwin.tar.gz"
      sha256 "3493d1e665e656fe144149d3d7d02453380e5e61af43d4f09ef8be9f920798d5"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.2/momento-cli-0.49.2.linux_x86_64.tar.gz"
      sha256 "8328a2878a68ecc313e2929ba7b04f093d15c97e2b70e962674385f551529aad"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.2/momento-cli-0.49.2.linux_aarch64.tar.gz"
      sha256 "30e3046771c5cb42772d8f1c3ae83da84ccdc4e4f481f9cbfef0747cc1ea65e7"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
