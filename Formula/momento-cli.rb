class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.62.0/momento-cli-0.62.0-x86_64-apple-darwin.tar.gz"
      sha256 "1615e3806b1088c6dacfc0718c1f9c0ac4008465668dd9fd1bfa66d17eba252a"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.62.0/momento-cli-0.62.0-aarch64-apple-darwin.tar.gz"
      sha256 "45166551f60569ff9a4d64a4cb2ac0bdd5ba7d492691268a2f0a2a50ee61edf3"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.62.0/momento-cli-0.62.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93564587b705506dd38164b93aaf40eefc7cef0472fdec24fc1ad14c12278940"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.62.0/momento-cli-0.62.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d7402b1b6616f036396e7974beec88798fe96f72fd7df0f3303909e1aaef9764"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
