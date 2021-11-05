class MomentoCli < Formula
  desc "Momento Client CLI"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.1.5/archive-0.1.5.tar.gz"
  version "0.1.5"
  sha256 "67487ffffff275e4c316a38e2248d7eea70f9f9e2d79d0df8a6abe14a933f46b"
  head "https://github.com/momentohq/momento-cli.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
