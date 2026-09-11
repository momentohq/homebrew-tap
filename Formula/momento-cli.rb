class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.59.0/momento-cli-0.59.0-x86_64-apple-darwin.tar.gz"
      sha256 "bed17b49d1b7e3d754e08a4516c71aedb72df06e9142e9d73a71866300364521"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.59.0/momento-cli-0.59.0-aarch64-apple-darwin.tar.gz"
      sha256 "dcf3537918b1cf445a1d3a2f4c7af50e3d4a99eefe2fc1c7c44ac5ddc561334f"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.59.0/momento-cli-0.59.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "268924619f7ebc2698005f373b81c650d354699c2a21492e1480bc0edebb271a"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.59.0/momento-cli-0.59.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c5ccc2f462b82920293f996c1653f8fe19ae755d16fb59ed6b51e1c1b3b06c2"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
