class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.51.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.51.1/momento-cli-0.51.1.x86_64-apple-darwin.tar.gz"
      sha256 "79ddab497b1235c3e5d9e536e39ade1263ab7d2a919215a34c3259bdc21f5a9d"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.51.1/momento-cli-0.51.1.aarch64-apple-darwin.tar.gz"
      sha256 "c9c60bb0a00de130baae0bd09626ed6e612c5243559b5fb4add21faa89328c80"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.51.1/momento-cli-0.51.1.linux_x86_64.tar.gz"
      sha256 "e977455af1c372bbfb328b59abbc59310246e414ef9202d49e1e40b19f8be444"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.51.1/momento-cli-0.51.1.linux_aarch64.tar.gz"
      sha256 "165d28635f22e6f6cc61ecc499ec61c943669c57d364098e2760914f0e738817"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
