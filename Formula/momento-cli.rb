class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.48.1"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.48.1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "c223ed447cd59be4a1a82c232d5db45493e36f7edae8a851dabc0e6ccf2112b9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "192839682dcc598d586267b92edbd7264eebaa7747a3f4de72eaac0ef672d960"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.48.1/momento-cli-0.48.1.x86_64-apple-darwin.tar.gz"
      sha256 "a02013046df773a8add657821079bc2e5e325895cbfbcad59fddb51275ed64fa"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.48.1/momento-cli-0.48.1.aarch64-apple-darwin.tar.gz"
      sha256 "4c8308fc049e89d258e1228e3b75e611fa401cc02ee1ab2c91632508b7637b13"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.48.1/momento-cli-0.48.1.linux_x86_64.tar.gz"
      sha256 "44ae2a112b08b7f4487fe61a4bed78ddd1d3860399c2b57f94adfcb1199c07c6"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.48.1/momento-cli-0.48.1.linux_aarch64.tar.gz"
      sha256 "08946f69682f07737548a1993cbb82f550ec61d684942cf4c40ef337424e9ec6"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
