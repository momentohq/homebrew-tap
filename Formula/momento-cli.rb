class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.52.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.52.0/momento-cli-0.52.0.x86_64-apple-darwin.tar.gz"
      sha256 "8e856a8e1797c3b691d2eea7d68ad45f0f9b4b5c4e016a430da8df77dc7f5441"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.52.0/momento-cli-0.52.0.aarch64-apple-darwin.tar.gz"
      sha256 "d9aa1c09fe0565b4345b0d879f3c3493b39d3aadf2292a347df494643b50fa40"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.52.0/momento-cli-0.52.0.linux_x86_64.tar.gz"
      sha256 "cdecc297e2ff3b1d8c7159d97a89ba398235b1102a98678697ac6009997d583f"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.52.0/momento-cli-0.52.0.linux_aarch64.tar.gz"
      sha256 "d29b28dce52e6ddc3bc7cbe38d67e654e510c3229272cd3d925785f1665fca08"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
