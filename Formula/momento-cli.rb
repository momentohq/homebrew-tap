class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.49.0"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.49.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "85cfe29f56a9efbee73b4aeb157025fd33ab73e532e5630071c1ac55d1bf62c7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4c6264a6226b5eed027c14cdb8bca56279bd95ad6290837ed7e64e3111547a20"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.0/momento-cli-0.49.0.x86_64-apple-darwin.tar.gz"
      sha256 "6fc403cb1f7b1a8e83980384c9959d845d585bbdfa5142e51ee12fe27ea15fe0"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.0/momento-cli-0.49.0.aarch64-apple-darwin.tar.gz"
      sha256 "0701be9056b9234c2d96385788713d75dfd5dd8db306d32a37b320231578ca79"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.0/momento-cli-0.49.0.linux_x86_64.tar.gz"
      sha256 "5fa193f32c58ce1f94f86e9fd16efd158eeaabf2a89ec2d403c459392def3a7e"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.49.0/momento-cli-0.49.0.linux_aarch64.tar.gz"
      sha256 "cdaf9ef24892249caf5bb2d2256affcf5924c5e4aacd16e0f92c984562b55c0b"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
