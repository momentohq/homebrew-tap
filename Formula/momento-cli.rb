class MomentoCli < Formula
  desc "Momento Client CLI"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.1.3/archive-0.1.3.tar.gz"
  version "0.1.2"
  sha256 "be407f449a19511042870ae803f2573ab923285af8a071edeacf06deddf802a8"
  head "https://github.com/momentohq/momento-cli.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
