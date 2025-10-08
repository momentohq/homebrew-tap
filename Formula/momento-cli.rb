class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.49.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.4/momento-cli-0.49.4.x86_64-apple-darwin.tar.gz"
      sha256 "eb804991c3a881b6a4881ba192e5ead499007629a26405edcfd33ede7f13fe75"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.4/momento-cli-0.49.4.aarch64-apple-darwin.tar.gz"
      sha256 "c0bf83692cbb245c1341239e13c254ebaf148611f15a2ec9dc9b1e5afede7960"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.4/momento-cli-0.49.4.linux_x86_64.tar.gz"
      sha256 "8a5d6643a6c757ea0ccd4fa5afe0d5319fe0a5fe523d8c3a48f4f44b3d6011c4"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.4/momento-cli-0.49.4.linux_aarch64.tar.gz"
      sha256 "9d893e9be557c2315b8f1b6e90d372e20c60c47a0948a5a128decdc0a62b3e1c"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
