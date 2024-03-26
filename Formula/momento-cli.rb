class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.41.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.3/momento-cli-0.41.3.x86_64-apple-darwin.tar.gz"
      sha256 "ce5c714f80095e0c7ac0a67a48bb7b0c6f6184cac4e333638f5f0d7c67923075"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.3/momento-cli-0.41.3.aarch64-apple-darwin.tar.gz"
      sha256 "fd5d3a251fc4586cb809c0fae21e65ea2a2cd1697989183e4511fc0533432276"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.3/momento-cli-0.41.3.linux_x86_64.tar.gz"
      sha256 "d37dab195a57c235ea19b70fcee6f131a8aee3b8189f7e81a06903f75cc81d4c"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.41.3/momento-cli-0.41.3.linux_aarch64.tar.gz"
      sha256 "35c763c65cf0aacb62086415e62eb9518ee9e531d68a2b744e978453d45538fd"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
