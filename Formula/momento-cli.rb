class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.33/archive-0.13.33.tar.gz"
  sha256 "fa09110a0ca1434f5ccb1ed86c52fbc56d0f8a05564c94587dcd87771e9b0c7b"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.32"
    sha256 cellar: :any_skip_relocation, big_sur:      "7e7bf7750004ed9100c76b7fa7e277b940ca63b4dbc4c84087cc59244ed09dca"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6ef630af7e1f44015d82858d1af15a9b048cf69b8dcd711ac75909c070192455"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
