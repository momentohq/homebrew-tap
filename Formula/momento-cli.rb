class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.63.0/momento-cli-0.63.0-x86_64-apple-darwin.tar.gz"
      sha256 "9595ab3402a94d973e964d40f00b2a62f61d8763ae88c4ce9ccee50f4aace009"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.63.0/momento-cli-0.63.0-aarch64-apple-darwin.tar.gz"
      sha256 "72980c35f42a71e8d4830e81afc7695ef0a4294cfb6373e05da36e006b373fd9"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.63.0/momento-cli-0.63.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae8754077def6fdbde0b82e9f62f070325b28492939054e5305a1ee090cb659d"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.63.0/momento-cli-0.63.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb492bb17dcad197f4af60042e05eeaa08e16a025df5379bef0bb858d90e94f7"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
