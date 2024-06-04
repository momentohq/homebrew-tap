class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.45.0"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.45.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "300e8287e797f7d51f6cfab42c20a72e945cf8426f750f306cabb0c4b8337215"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "97cd3540e297a5deaad8a8278ae630a720e200360314a5794cbda11c05d9c358"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.45.0/momento-cli-0.45.0.x86_64-apple-darwin.tar.gz"
      sha256 "2bdd020e1bfe86ffe31e91887e8bfc555322698c091b2007de7c3f4b77154448"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.45.0/momento-cli-0.45.0.aarch64-apple-darwin.tar.gz"
      sha256 "b01675e88f90f2171898336ab0b6c88d1ec6c7ae75e35623aac951a7580eddac"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.45.0/momento-cli-0.45.0.linux_x86_64.tar.gz"
      sha256 "898e0773aea301bc23ddd7a6dc1256650b5a88e5b76fe5adc08c98c8b789bcae"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.45.0/momento-cli-0.45.0.linux_aarch64.tar.gz"
      sha256 "a5f9c567832acd310f468b6a7057232cfba0ad042ba2a7698c3e44109791f692"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
