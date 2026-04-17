class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.54.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.54.0/momento-cli-0.54.0.x86_64-apple-darwin.tar.gz"
      sha256 "43ba84c411bfb24c03c255d4a40612349ad4cea1edc10434a655a58bac260cda"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.54.0/momento-cli-0.54.0.aarch64-apple-darwin.tar.gz"
      sha256 "f39ab6fe4887ee16e446f6ee1606b685e4898e70be7bbd67c254382256b15b51"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.54.0/momento-cli-0.54.0.linux_x86_64.tar.gz"
      sha256 "9bfea8134e683ff8fa622091609e63b6e5de6a96b73e3d13b52d7b289f22b647"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.54.0/momento-cli-0.54.0.linux_aarch64.tar.gz"
      sha256 "d24907299164b07e52bce89404712374e140baf3e441d15a7b66ea6dce1c9c85"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
