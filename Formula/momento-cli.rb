class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.31.0"

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
