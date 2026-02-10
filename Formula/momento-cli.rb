class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.50.1"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.50.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "3b410718b238722f1c458aa478794133f3501cdfaa8d397498b12e376acb559a"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e48409ae63f2af2f89716672e3808e9cdc91eb1f04440f55f7a60e2f65b86fd4"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.50.1/momento-cli-0.50.1.x86_64-apple-darwin.tar.gz"
      sha256 "04293ae5916375221cfa4f2a48302dac9eafce68f535f297aabc0086dcea580d"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.50.1/momento-cli-0.50.1.aarch64-apple-darwin.tar.gz"
      sha256 "6a38ef3615d90f24e05eadb911ff701baab45e7f8b017bc2c5b973e2d60afc03"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.50.1/momento-cli-0.50.1.linux_x86_64.tar.gz"
      sha256 "4de7a33301a2f40654d52f357aeabf531484f1f2b2efb0783a6c78ac5b369cad"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.50.1/momento-cli-0.50.1.linux_aarch64.tar.gz"
      sha256 "4250f14d8d8c875fbf7f464f810e743597a609a00e71a1819c26da0859016dd5"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
