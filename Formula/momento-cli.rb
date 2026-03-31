class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.53.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.53.0/momento-cli-0.53.0.x86_64-apple-darwin.tar.gz"
      sha256 "3cbd9f9618f0abb23588b762559f874101fc4338e019752240381db5a956ac81"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.53.0/momento-cli-0.53.0.aarch64-apple-darwin.tar.gz"
      sha256 "b41f7faf7ddfe308600817300cf130064422f66f4a68b8e6835a4cc47331609c"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.53.0/momento-cli-0.53.0.linux_x86_64.tar.gz"
      sha256 "629a3d18fbcf5f1b4a0a92785fb1a813817a0e99315f1ac56b41011f6c40fb9d"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.53.0/momento-cli-0.53.0.linux_aarch64.tar.gz"
      sha256 "fb0e35c6fccb288b5d0260eb8b509afb970888a32c74226f690698193ea8edab"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
