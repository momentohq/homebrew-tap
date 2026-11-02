class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.64.0/momento-cli-0.64.0-x86_64-apple-darwin.tar.gz"
      sha256 "528cb9e7367e7951bf8cc26cde7e1f05c696f7d47acc1394ef49e6bc41dbe981"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.64.0/momento-cli-0.64.0-aarch64-apple-darwin.tar.gz"
      sha256 "e4056baf77a1436fe7d8942000c27858f355a1be7a11240a756dd99285aae214"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.64.0/momento-cli-0.64.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d44693d1b08a5c1889137dfa683c3bfcc173dea3983e3dc9a312ddcaee9891a7"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.64.0/momento-cli-0.64.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2e88d505d3e04d2ef825f936373ec1cf2fa04058949374e82cf6ea92534aa40d"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
