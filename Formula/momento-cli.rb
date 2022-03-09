class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.10.0/archive-0.10.0.tar.gz"
  sha256 "f19076ab793c1e3b70fbb92c3c46fffa895da15d044889797aeb037618ab1b54"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.9.1"
    sha256 cellar: :any_skip_relocation, big_sur:      "bfb313ec598a8116f2996a9fe96fd8a0b7a164e40cf1142761cc352f6b593d13"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b9c1787d5a332c90d0165b77192cb3bcd697339f917bfbe9b038deacd01408e9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
