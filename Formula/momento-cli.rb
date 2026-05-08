class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.55.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.55.1/momento-cli-0.55.1.x86_64-apple-darwin.tar.gz"
      sha256 "0b4572de6626131a5e6c2dab24a42807bd8ecae4f9b0c67d19f50c1c7df44808"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.55.1/momento-cli-0.55.1.aarch64-apple-darwin.tar.gz"
      sha256 "2f675b8247489383e1f8c3035bb7325a21895ac22a7beaa2af31fae6996559b3"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.55.1/momento-cli-0.55.1.linux_x86_64.tar.gz"
      sha256 "96aa6c0d62e7fe97d6167a428dba63cf547e040111933a24712aee7ee39eddfa"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.55.1/momento-cli-0.55.1.linux_aarch64.tar.gz"
      sha256 "71ddab5c50f68579794bb4ce3fd15b7757401d2d4165238eae76fef78921662a"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
