class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.56.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "dda14813e4fe0b045918f32ae0b079e3c64a3aa1cec5938d05dd0b6c03866bb6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1d89351eb4afea182f2d7e3c2dc41b7ca05c3e912dbd56c264c58bc63b2a1261"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.56.3/momento-cli-0.56.3-x86_64-apple-darwin.tar.gz"
      sha256 "055639fc1b40b69e71e49a35f9f067d9aa9807a7c3a4b41227519901e5955335"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.56.3/momento-cli-0.56.3-aarch64-apple-darwin.tar.gz"
      sha256 "70d5df3462a13ae79a9d036b7d5837760424c7c9f49cf4635938dc00f7740d07"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.56.3/momento-cli-0.56.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c9c239666973fd1b0e7ccf18b75e4c8ab48c58584d8c4b66c880d3d83c4140f"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.56.3/momento-cli-0.56.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c2c329d105efecdb80e11ccd00978645ccb9cf1b5b43d2f9bdc0488464700a79"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
