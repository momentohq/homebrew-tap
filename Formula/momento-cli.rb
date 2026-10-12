class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.62.1/momento-cli-0.62.1-x86_64-apple-darwin.tar.gz"
      sha256 "463e085601a64735f76a5793de7e155629a5b8cc62fe15eb447f9f98ec20c8db"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.62.1/momento-cli-0.62.1-aarch64-apple-darwin.tar.gz"
      sha256 "e2fd9489083d9751bf5eb08c2f88b8acb12a6a0369057a92d9c875101f084d49"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.62.1/momento-cli-0.62.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e83b1b109c04e7a86510ca3ec60346e844ddb913b13d85dd3cf007902dc4070"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.62.1/momento-cli-0.62.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ae14f3db3d95f47ad19a150718088c33009c154525996b520399f0af5163ce63"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
