class MomentoCli < Formula
  desc "Momento Client CLI"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.1.2/archive-0.1.2.tar.gz"
  version "0.1.2"
  sha256 "8c3073cf893dcd14090c11e063019dc988fcbfa6b0a858664f603dd6c1d9bddf"
  head "https://github.com/momentohq/momento-cli.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
