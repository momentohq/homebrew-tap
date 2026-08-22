class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.58.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "570c243b7b32d686d775c283f932f00e3ec3bc4d8a8c0eb0573e4f423ddde19f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b3524d90d22f9123d08484938cd27ea46a0fcae353c1719f2e2d8c9ba4e34284"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.58.1/momento-cli-0.58.1-x86_64-apple-darwin.tar.gz"
      sha256 "ed1acd7bfbf9c70ea147f67c803703b26c7f48fb4ba6182b3f915d8970a01d10"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.58.1/momento-cli-0.58.1-aarch64-apple-darwin.tar.gz"
      sha256 "3b7c0bddf46e27648574da4665096bb656cc7dc9709cc646a4e4010b7cc6d34f"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.58.1/momento-cli-0.58.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "718a4e9fd2782a5e71ab87f05c40c527486d1e2313417a4b6a1d4f630fc51be0"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.58.1/momento-cli-0.58.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c52ab0ab76460a765ed095b9a449c7712dd1ab00f68cb2df5a5b35220d92c13"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
