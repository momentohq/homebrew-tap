class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.37.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.37.0/momento-cli-0.37.0.x86_64-apple-darwin.tar.gz"
      sha256 "e28730e0647a5d799dc2631701f04c07a20bfbf8376e7969cf3d3ebb34c38628"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.37.0/momento-cli-0.37.0.aarch64-apple-darwin.tar.gz"
      sha256 "01bee7bf709d5f5fb49a3159e4f94f9cde0522f3e14c20fcd65e95b2e72f68dd"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.37.0/momento-cli-0.37.0.linux_x86_64.tar.gz"
      sha256 "b48ac43130434b9a0a4753adb363575ecd985db1b415f466565210f2082cb79d"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.37.0/momento-cli-0.37.0.linux_aarch64.tar.gz"
      sha256 "369b01b2b9de83a5fc7a0dce4435b14fd339a553fda4954f7e6163540bcfb202"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
