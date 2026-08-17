class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.58.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "5b367aceb17728c7852dac52ffb4ecdf8181f12c8324718f41f817bef804a558"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3bd38808cf977c9ff2823d232ab6a4376c888f704fafde65319b7f70df0cbf50"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.58.0/momento-cli-0.58.0-x86_64-apple-darwin.tar.gz"
      sha256 "14c6ad1445b6f0e97a30257d963de3d75bf3316f5e845bddceba398362557ad2"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.58.0/momento-cli-0.58.0-aarch64-apple-darwin.tar.gz"
      sha256 "916180d58e3e5932f7700baabc9d847eb5efbebe387f1b201a7cb3f51f6e1264"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.58.0/momento-cli-0.58.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "05dcc3925ecaea1bba3943e50289c5d1a2032d2177761938ad253ff7cb214988"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.58.0/momento-cli-0.58.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c789ecbe909076e71c6eaf30e788e9a2e760d8107518eb053b5288c30160c76e"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
