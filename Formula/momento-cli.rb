class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.22.0/archive-0.22.0.tar.gz"
  sha256 "7e17970280f3622afdb546f63c57d1bc98d7885fb7b7209e47e88a3cd8ece6c4"
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
