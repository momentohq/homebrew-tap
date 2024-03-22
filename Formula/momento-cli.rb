class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.41.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.1/momento-cli-0.41.1.x86_64-apple-darwin.tar.gz"
      sha256 "fdb2df663bdef85ee8dab24d268d913e3fb4e8239c2de1321c6fa729af6c1a60"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.1/momento-cli-0.41.1.aarch64-apple-darwin.tar.gz"
      sha256 "44c2cde6caacf6d14f000ecd910f165f2bdbf1a4af0b0bbad0427138ab111253"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.1/momento-cli-0.41.1.linux_x86_64.tar.gz"
      sha256 "c816b14968f8c215527961250bd920de3b9db6da9e169dab701ee5ae2b0fe52a"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.1/momento-cli-0.41.1.linux_aarch64.tar.gz"
      sha256 "1ef0a87c3a9c2827656575039941ebc0375c78f273f85839c24020744a4cfc4e"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
