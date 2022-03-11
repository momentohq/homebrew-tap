class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.11.2/archive-0.11.2.tar.gz"
  sha256 "215005f176ba2cf32286399c0240097bddc3b4ff0e38c4003f20aff5b9b26e60"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.11.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "762ec9919e12fe11884747c6ac2ed2119649a981470be0e05eae8d1d643198a6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0221b516498557b143b5d997220319e70a5e1cbf289c2aa7f04d83ffe1fda569"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
