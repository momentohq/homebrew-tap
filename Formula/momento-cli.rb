class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.22.2/archive-0.22.2.tar.gz"
  sha256 "280d5887705c7016b910036489267a4bf0eba86aaa2236229eaf5d785ed0aa44"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.22.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "cb88b61781b0b7afa06500156e99fbb45d32840179a4b7aa80cafce29e43e638"
    sha256                               x86_64_linux: "a9549becc13f910184200ceab410edeaac71c6a6bb7a8c68bf3e4c9a97c39213"
  end

  depends_on "protobuf" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
