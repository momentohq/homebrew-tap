class MomentoCli < Formula
  desc "Momento Client CLI"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.1.2/archive-0.1.2.tar.gz"
  version "0.1.2"
  sha256 "19cc8336d0d0eb2e321ccf0eb3421e0e2854237dd64febefe23108f962b6f401"
  head "https://github.com/momentohq/momento-cli.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
