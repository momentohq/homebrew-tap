class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.35.0"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.35.0"
    sha256 cellar: :any_skip_relocation, monterey:     "01b08a65a199200c3b790c3b8133ada2d1948df35489efd4e753bb4fda864159"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5ee53b41fac963fe29ac0d34432e10f78f5ada29f1cbb53b5d9c37452029373b"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.35.0/momento-cli-0.35.0.x86_64-apple-darwin.tar.gz"
      sha256 "ef664fdbdc88bff1e654db6c403f8071ec2a8f3deb01b6f3a08e2bada33c3dfd"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.35.0/momento-cli-0.35.0.aarch64-apple-darwin.tar.gz"
      sha256 "4988d9219986181b63073b52920933fbb1134bc5ad2ee02d72d477132b3e2953"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.35.0/momento-cli-0.35.0.linux_x86_64.tar.gz"
      sha256 "e52a222301abaec619e9942aa798f411658475fc226e945f0723f93ccd528adb"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.35.0/momento-cli-0.35.0.linux_aarch64.tar.gz"
      sha256 "25c13a281ad46796cb4f815b406ff6b7e63830f3af24b8d65f66fa3166a1a873"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
