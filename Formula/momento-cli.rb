class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.29.3"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.29.3"
    sha256 cellar: :any_skip_relocation, monterey:     "9f8804c440f603f106d268cbcac11bcbdea1485324ce3c7e9202c12ecd45c733"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "19c04f8006c53070bdd5b8c9f4fc9dd1ef9fe7881a9d53f6ffcdf68a8fa56a31"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.29.3/momento-cli-0.29.3.x86_64-apple-darwin.tar.gz"
      sha256 "50a0fa08357006a3bf2e7f34c98c23921ac092c73618f789b72f64386c797350"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.29.3/momento-cli-0.29.3.aarch64-apple-darwin.tar.gz"
      sha256 "b5871afd2460e99faac4f37ee42521d39d9dc8d82a876230e98e1b7befdb155f"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.29.3/momento-cli-0.29.3.linux_x86_64.tar.gz"
      sha256 "ff4b916bec0585780695752be2ce6133f6728509292d6de8e2588b008ae72d34"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.29.3/momento-cli-0.29.3.linux_aarch64.tar.gz"
      sha256 "9da39adbe4a25d0362e99da291f50349dc319c79a6390137891917b1060622ea"

      def install
        bin.install "momento"
      end
    end
  end
end
