class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.39.0"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.39.0"
    sha256 cellar: :any_skip_relocation, monterey:     "192ad6b44e174296f3c08194cdfc299863859dd7d8e8f7b710ec34e7d88c51ac"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4bc99586beaf0325638d3edcdca155bf04dc9ec2123a71d8952a51699c014fe9"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.39.0/momento-cli-0.39.0.x86_64-apple-darwin.tar.gz"
      sha256 "13e1a931c2daa9069a8153fe32f5a183190fbec16a1e7beac4963c411321bb87"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.39.0/momento-cli-0.39.0.aarch64-apple-darwin.tar.gz"
      sha256 "4bb4ba49b6e49adb3b658ea7391df7b115fa44622a646a7df071cddb7b747595"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.39.0/momento-cli-0.39.0.linux_x86_64.tar.gz"
      sha256 "e97dd7db3d734e7702d1c9f2311943c47de7b2a53dbde1bf21093083f3de3432"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.39.0/momento-cli-0.39.0.linux_aarch64.tar.gz"
      sha256 "048d2bb0c750e890342cde2a80570521a86b03c650b83f50094f4006705d5b2c"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
