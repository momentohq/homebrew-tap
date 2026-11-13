class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.65.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "428208eb4380b1c5a15eed305980bfe451f0838fd40ad0e7c36647042ef176e3"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5ce6b47a849b9d795921524a7aef9e81d459e2b6998d89c05a1c69d0708319a0"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.65.0/momento-cli-0.65.0-x86_64-apple-darwin.tar.gz"
      sha256 "20a7eda3a16db0cb445fef85da3b022f9b2c43c7ce9c5df86e96132b7df27865"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.65.0/momento-cli-0.65.0-aarch64-apple-darwin.tar.gz"
      sha256 "af35e2c1614e0d9cb5ac83881c9d4bfbec49e0e2553992d342a6ecb061bd438b"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.65.0/momento-cli-0.65.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c4caf9892a02e5f3cacbda1f321116520910e69d11467c472b6d9c6c2818ec5"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.65.0/momento-cli-0.65.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4404b16ac0373a09c1ea503bb26ad412b35bf9c155a1d05cb16ba050e7a47186"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  test do
    assert_match(/^momento \d+\.\d+\.\d+/, shell_output("#{bin}/momento --version"))
  end
end
