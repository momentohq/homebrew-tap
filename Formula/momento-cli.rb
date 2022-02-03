class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.8.1/archive-0.8.1.tar.gz"
  sha256 "08fa688c877acc319c29abbebad38360e551504e9d3d4bfdfc0c2d045718d7a4"
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
