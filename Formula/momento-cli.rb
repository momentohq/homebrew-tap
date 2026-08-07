class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.57.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "2fb307df4ca3e4cec7b82ef9e9c28dad35773b94de3bf5a62e561744da63e7ac"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e4a5db10102f0d5af1ff91d567b2c381758a67f82befe40cd27cbb2fd3b6349c"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.57.0/momento-cli-0.57.0-x86_64-apple-darwin.tar.gz"
      sha256 "c3c9eb7fc35f21d505421488e53f345c6d7e285b4d30d1e5eb345d8e58b7e4e1"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.57.0/momento-cli-0.57.0-aarch64-apple-darwin.tar.gz"
      sha256 "d922952a956ada2045a3d9991a6bd547551b47ccd2229430e05a637400f371a0"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.57.0/momento-cli-0.57.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5da391c5f78ceb04e7560034c01f38dbcd3a8eb73738caf2056e0ee3f55145df"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.57.0/momento-cli-0.57.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0cf6ea10fc438b72f0b267ab4cbe186d96d28ea2939c4ea9c633483a1a35846a"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
