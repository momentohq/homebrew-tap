class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.45.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.45.2/momento-cli-0.45.2.x86_64-apple-darwin.tar.gz"
      sha256 "4afc7a508147d714ff20fb6472467d60b6fed5dcd2c35566e22c271160722afa"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.45.2/momento-cli-0.45.2.aarch64-apple-darwin.tar.gz"
      sha256 "bca60956eb0d60d539cd6e525f4eaed8e70ba30ddee35169dce417352396ef68"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.45.2/momento-cli-0.45.2.linux_x86_64.tar.gz"
      sha256 "62668706a5ff8f63fa63eb69c701d9501869eab04065407aa774fd6f302b1f99"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.45.2/momento-cli-0.45.2.linux_aarch64.tar.gz"
      sha256 "44c172b6f20a87cba8331cdbb24710065201235e9037d099af85b4725a88921d"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
