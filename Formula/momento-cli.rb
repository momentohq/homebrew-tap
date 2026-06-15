class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.56.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.56.2/momento-cli-0.56.2.x86_64-apple-darwin.tar.gz"
      sha256 "29971d58f1f1bacd323949599376642e7f4165235dc52eb90eb9c808f418f990"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.56.2/momento-cli-0.56.2.aarch64-apple-darwin.tar.gz"
      sha256 "e8499dfe4f2ee35bbe28d960eb5820243575004f8782280fbd6533dd8d60d5d8"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.56.2/momento-cli-0.56.2.linux_x86_64.tar.gz"
      sha256 "9f8591588ace94fb0d11925d6167207f700d8c9667724b374cf6d5ba29af5a57"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.56.2/momento-cli-0.56.2.linux_aarch64.tar.gz"
      sha256 "eb55b8742c21cbfc0e99699f9bd7e676e654be202b922daf9719fe5a169c9315"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
