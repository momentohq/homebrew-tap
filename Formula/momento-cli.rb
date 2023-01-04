class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.26.2"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.26.2"
    sha256 cellar: :any_skip_relocation, monterey:     "2bfe3ad17c3c8b9c6651ff839a8ab80afc56a264b6e92553773dc39b01b47b47"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6b5735c96c4b14ac2b80fd64f53488dbc8ab74813cb991e895335fa515354fd6"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.2/momento-cli-0.26.2.x86_64-apple-darwin.tar.gz"
      sha256 "a534ee22b9f81b0457c48b8090cd568e60438c42ae7b6a122b0e7bef236a54a9"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.2/momento-cli-0.26.2.aarch64-apple-darwin.tar.gz"
      sha256 "863d76033c854301a320e0352de70c2079849156db67b3239102a91febffad7e"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.2/momento-cli-0.26.2.linux_x86_64.tar.gz"
      sha256 "a19f0a99533e6b1585c7f7c93fee223d5e6dc138e3b396af10610b136c58e91f"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.2/momento-cli-0.26.2.linux_aarch64.tar.gz"
      sha256 "53588d1bd3770146d21c119c523c7819135b82b0bfbda1a3c0c9590622adad4c"

      def install
        bin.install "momento"
      end
    end
  end
end
