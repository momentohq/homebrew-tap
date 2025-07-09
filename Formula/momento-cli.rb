class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.49.1"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.49.1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "e79f7654fb186ad34ec7e30b06bf9c77fb083d8aa8e28b466452fbdd27411aae"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ef6ba0f5ebe7dc8c48ff584d40d359943cd1670ed1c478553e282ca74b3c425a"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.1/momento-cli-0.49.1.x86_64-apple-darwin.tar.gz"
      sha256 "eaca77dc6a993a343031c51c9440288ede50c1ecba4fc0d21ee2f8b0dd112f94"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.1/momento-cli-0.49.1.aarch64-apple-darwin.tar.gz"
      sha256 "6bc83d31f3dae5eada954e8d78c5ccf1d3b88bda229d93c5d1cf8d9b659e031e"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.1/momento-cli-0.49.1.linux_x86_64.tar.gz"
      sha256 "1a178b4f6fbdd37cf32217db43ea5f08f235eed04467707d24cf8768fc4fac61"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.1/momento-cli-0.49.1.linux_aarch64.tar.gz"
      sha256 "e126569de479d9928f508ef3fc1c3e7a51eb4c71120090e75434be94965f64f3"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
