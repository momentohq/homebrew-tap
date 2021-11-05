class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.1.1/archive-0.1.1.tar.gz"
  version "0.1.1"
  sha256 "19cc8336d0d0eb2e321ccf0eb3421e0e2854237dd64febefe23108f962b6f401"
  head "https://github.com/momentohq/momento-cli.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
