class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.55.0"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.55.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "4245847738a30a7bff247c850c58da8ac93aee1fcacf3abdef346fd334084df8"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "09053ad1abb45940ece92749e4786a5989821dde78c33a1075f2e8a96745b787"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.55.0/momento-cli-0.55.0.x86_64-apple-darwin.tar.gz"
      sha256 "586cfaebd87600f8435a9d49eb35b8de0feafde2bb260232e5cb526fd131b5c1"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.55.0/momento-cli-0.55.0.aarch64-apple-darwin.tar.gz"
      sha256 "a2d9b3b3844f73ef345aa216a94b28055239b430d41f09fdf00acf46132af9ff"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.55.0/momento-cli-0.55.0.linux_x86_64.tar.gz"
      sha256 "527ed78ad5e299a8fd0c63de12c1b0d6268c754286ad6667e1095c107a8f5b35"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.55.0/momento-cli-0.55.0.linux_aarch64.tar.gz"
      sha256 "23850c6f897e6de2d2d02064f4e5437803a57979b72281917040b8102454d98d"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
