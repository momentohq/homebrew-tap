class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.57.0/momento-cli-0.57.0-x86_64-apple-darwin.tar.gz"
      sha256 "c3c9eb7fc35f21d505421488e53f345c6d7e285b4d30d1e5eb345d8e58b7e4e1"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.57.0/momento-cli-0.57.0-aarch64-apple-darwin.tar.gz"
      sha256 "d922952a956ada2045a3d9991a6bd547551b47ccd2229430e05a637400f371a0"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.57.0/momento-cli-0.57.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5da391c5f78ceb04e7560034c01f38dbcd3a8eb73738caf2056e0ee3f55145df"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.57.0/momento-cli-0.57.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0cf6ea10fc438b72f0b267ab4cbe186d96d28ea2939c4ea9c633483a1a35846a"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
