class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.30.4"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.30.4"
    sha256 cellar: :any_skip_relocation, monterey:     "a49bab777d7241cd5050a568840e96aa0379a7f71606220b9052ca979c54d727"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "284ba16f1404d154186711bf16d9c1862b0f999ed5c5d6aa1196d1e85a5076a8"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.4/momento-cli-0.30.4.x86_64-apple-darwin.tar.gz"
      sha256 "762ea9f2639eb4aed2f2f66163c1fdd8e4bd26f0c40e44094f53c87fdf0b3e95"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.4/momento-cli-0.30.4.aarch64-apple-darwin.tar.gz"
      sha256 "103fb23e39ab4b1d175d27e5b63e6fe6ec28e7dbcdae5e71c8dd43a7c7e379f0"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.4/momento-cli-0.30.4.linux_x86_64.tar.gz"
      sha256 "ba3ddb344829af87c623b75ba837a28921463961ba27969aa84999e9f95d57c9"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.30.4/momento-cli-0.30.4.linux_aarch64.tar.gz"
      sha256 "be82ffeb06fa4cb89a0fd69a33257892623e9df030d4844ff3dc9140dbe9a688"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
