class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.41.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.9/momento-cli-0.41.9.x86_64-apple-darwin.tar.gz"
      sha256 "b943a5b5023cae1eee6e52afe11b7ce9c24ba5bec5ce470e33e3ee71e851fbe3"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.9/momento-cli-0.41.9.aarch64-apple-darwin.tar.gz"
      sha256 "dd99aaa54a9ec2e84d6a8f83d18f2b9719f6e3cb8f76bbe794a7ebb7617a2a79"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.9/momento-cli-0.41.9.linux_x86_64.tar.gz"
      sha256 "3f911d4d240645d9033a4d119619d896a6bbe33751fa6ac8e081f0ad71046652"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.9/momento-cli-0.41.9.linux_aarch64.tar.gz"
      sha256 "71bb937b307ab61e842b9f425e15e5f2a6a486922a7b18219c8c6abe5a247171"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
