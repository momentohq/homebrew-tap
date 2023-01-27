class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.27.1"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.27.1"
    sha256 cellar: :any_skip_relocation, monterey:     "f8506e2cc571a711e7500e98f5b87961315547ec82c494ec0295cd3d121f73fe"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ec7cc8354128c9e0459e876f825882c0917e4efeaca82bc4e0300a39f36cb0fe"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.27.1/momento-cli-0.27.1.x86_64-apple-darwin.tar.gz"
      sha256 "c7acef740c5b1c40f8c3753a94e664736c7ca84800d2f40f2cd19ffe6d4372d3"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.27.1/momento-cli-0.27.1.aarch64-apple-darwin.tar.gz"
      sha256 "2d182278311e31e91362452e3ae61254d1a7fbcad3060792b5639264169d5222"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.27.1/momento-cli-0.27.1.linux_x86_64.tar.gz"
      sha256 "d32ed62761683a2ef75d2554d0b6235ef6019090ecbb315e40a0da65323414e0"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.27.1/momento-cli-0.27.1.linux_aarch64.tar.gz"
      sha256 "770c579b0ed98ebd9498e66f54132399a1b6e4565d10fa79b1ae72db221cb6dd"

      def install
        bin.install "momento"
      end
    end
  end
end
