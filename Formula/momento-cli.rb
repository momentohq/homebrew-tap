class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.26.5"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.26.5"
    sha256 cellar: :any_skip_relocation, monterey:     "bc5a5250bbcb23d172ce9b9ee27db51fa36520bcc3d216e7eccc9f436740aa24"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3b57a6628b4fb87a151643c72bfa0e021ce1915e75bb548596c8bb4067067ce9"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.5/momento-cli-0.26.5.x86_64-apple-darwin.tar.gz"
      sha256 "09eeacafb074c1716a62e31ef7c40e80ebcd07061de5df99c8de83868243b4a5"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.5/momento-cli-0.26.5.aarch64-apple-darwin.tar.gz"
      sha256 "392631fafdf92b452e2c4d31e76e80309cae597b097f455b1073cabb3d2f18aa"

      def install
        bin.install "momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.5/momento-cli-0.26.5.linux_x86_64.tar.gz"
      sha256 "133ce57b1a0ef86f6bbee32b563c405dbc0208f9d82f8368c75e388c248178df"

      def install
        bin.install "momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.26.5/momento-cli-0.26.5.linux_aarch64.tar.gz"
      sha256 "8707f825007e2056e5eb1e7af2b10d3c26ec16b388b54ae7a5ea1bd51d415d7c"

      def install
        bin.install "momento"
      end
    end
  end
end
