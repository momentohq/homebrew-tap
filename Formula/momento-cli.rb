class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.8.2/archive-0.8.2.tar.gz"
  sha256 "7cc01bf5dac811999a9ff73c23d84c4c4a34ad0c59c7bc1d2d2641ff9cbb5034"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.8.1"
    sha256 cellar: :any_skip_relocation, big_sur:      "32aef2328705a5e2cf3a064c7b723428e158fa68a44da8c20a1df1608cb0842e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "febc351765cc3084289eaab7d2c5fc37cd7db69b0d99d143d0e51af8ad4c33a8"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
