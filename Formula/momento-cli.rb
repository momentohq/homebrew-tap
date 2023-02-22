class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.31.0"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.31.0"
    sha256 cellar: :any_skip_relocation, monterey:     "e61ed4ca6bde0e3fdaf8acf6962c1b17fba0eda15e7615b82ff70c3b6c2979fa"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f8f26f6e9dad51817560e0c371c6399ecb33c4c5a17bf2626f936ac815f813c0"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.31.0/momento-cli-0.31.0.x86_64-apple-darwin.tar.gz"
      sha256 "08892abce78aeab74de22d49ac2468ce1a3ee734f848b83cc467e8cf725c089b"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.31.0/momento-cli-0.31.0.aarch64-apple-darwin.tar.gz"
      sha256 "7350dc5a1935f9bf6b8b66efa06d2ec4ca25ed648c17dc78f437b57b7cee2c99"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.31.0/momento-cli-0.31.0.linux_x86_64.tar.gz"
      sha256 "d2842212e8781e94a7af4f4e29d4a50e769fda24928264f58d57cbc77a6d1dec"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.31.0/momento-cli-0.31.0.linux_aarch64.tar.gz"
      sha256 "89e8c4ea5c2be0bacbb8ed6ca91a039aad250958b6b703bc69a82ab68b56d128"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
