class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.60.0/momento-cli-0.60.0-x86_64-apple-darwin.tar.gz"
      sha256 "708cdc58c379d21d6e522112175f3f6f4126f8894cdd1410d1926b45208e2ebe"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.60.0/momento-cli-0.60.0-aarch64-apple-darwin.tar.gz"
      sha256 "9bd51f5f99304f86347b5db34eab67eec9023acd12060c3ead25eb936fede2c7"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.60.0/momento-cli-0.60.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "adac257f75704a13f8005682f208612db4bafc0ec1c4969a246730cd99e869f1"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.60.0/momento-cli-0.60.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "183c5820f2ca2698a36530baaf445c6340da71383860769cfa021304dc800397"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
