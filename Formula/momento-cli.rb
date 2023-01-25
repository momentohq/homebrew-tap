class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.26.7"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.26.7"
    sha256 cellar: :any_skip_relocation, monterey:     "2d2d58bb93dffbad561361f4b1f588ea8017d2bdb5e2fb2c304d7cb58bb3da89"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e8191704aa1bf9ddfcc02946ac660ae0fd76b977382bfd9548d81a68fc8c3d69"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.7/momento-cli-0.26.7.x86_64-apple-darwin.tar.gz"
      sha256 "23491edb8bfd2bdfd5815a7cab30bc974392eacb7cc20ed709759aee99f48077"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.7/momento-cli-0.26.7.aarch64-apple-darwin.tar.gz"
      sha256 "7d1a59229130f51270f1bc5831fdddf518b3e9a43c63a697f827926f4e6426e8"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.7/momento-cli-0.26.7.linux_x86_64.tar.gz"
      sha256 "35e5affbce4e8f39fa41c2de72825d4fb53af24362f478d479369f08b1c1711a"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.7/momento-cli-0.26.7.linux_aarch64.tar.gz"
      sha256 "afd35e6c809a6445e947e12d37a1003a778864bc1de51335e818ffdc7dcc8f35"

      def install
        bin.install "momento"
      end
    end
  end
end
