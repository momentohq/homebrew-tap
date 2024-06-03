class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.44.0"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.44.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "55f5007ca513d91e619e161124384ff4d16d5feebc0d150bffb9e61dae4bcd5d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8b14bb135f503deb62abc3841e429a433e2f339395ab552b8af8d08ea0f7c40f"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.44.0/momento-cli-0.44.0.x86_64-apple-darwin.tar.gz"
      sha256 "a4182421810298dd44219c032d37a54a08bba7d8985a50c7e2627df6776b8dd7"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.44.0/momento-cli-0.44.0.aarch64-apple-darwin.tar.gz"
      sha256 "406699dd0ce72e8f83947e0d0344da3b4ab3411ff0a1c8d4afe29b668b66c289"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.44.0/momento-cli-0.44.0.linux_x86_64.tar.gz"
      sha256 "f9c006c7da23666e1c9fe61d86ce74c604d62291fc56c57573718a8bb9845b56"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.44.0/momento-cli-0.44.0.linux_aarch64.tar.gz"
      sha256 "48ea630f2ee0cb285d1ae8eb203864d284d10500890875527e7dfe32531dadb1"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
