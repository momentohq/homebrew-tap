class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.61.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "b20ec07674120685def60d7158d860630fff142e58aa8f7cfb08eee6fbc37459"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9b40a3676d6e8f8087bb8483a84e25c70fb0a751a8f99f547b9791d0a4945c56"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.61.0/momento-cli-0.61.0-x86_64-apple-darwin.tar.gz"
      sha256 "81049f3fbcce87196ade0793d8f3f8e61324919974c3dd1541359d9566b4f24a"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.61.0/momento-cli-0.61.0-aarch64-apple-darwin.tar.gz"
      sha256 "189c5670bcc6a8593dca62d98f9a3f1687f2eddbab9e79cca624216525b9c48f"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.61.0/momento-cli-0.61.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "816e308cef61a83d4a595f5c02a1141168d717504378c8336a95fc3baebbae09"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.61.0/momento-cli-0.61.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "350b2bde63fc1720dce5489c37ec3cdd9b5c2693311be1d5cbeb0bf8afc3174c"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
