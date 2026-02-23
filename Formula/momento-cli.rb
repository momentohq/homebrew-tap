class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.51.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.51.0/momento-cli-0.51.0.x86_64-apple-darwin.tar.gz"
      sha256 "fb2fd8206304f6e38c1d5118c3c9152af084912e5cfdbce5f83ace92f2190b79"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.51.0/momento-cli-0.51.0.aarch64-apple-darwin.tar.gz"
      sha256 "a6176fd3ee0b00efdc5aedb5e05203c1e0f60f104e0fd4b18015ddb4ed10238a"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.51.0/momento-cli-0.51.0.linux_x86_64.tar.gz"
      sha256 "652db4e39ddddb2b343bc426582d69177ad0c6dc5a7ef8d3265a5636fca33af9"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.51.0/momento-cli-0.51.0.linux_aarch64.tar.gz"
      sha256 "2eb3459e23fb6b413538e2e63c29f5ebebdd4c613ba2cebb724e339900b90b9e"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
