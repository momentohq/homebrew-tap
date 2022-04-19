class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.28/archive-0.13.28.tar.gz"
  sha256 "de2e74cde21fb1810ef337d2d01da85dd1521cd5d2d3c06dd851a2b44a4e2ad3"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.28"
    sha256 cellar: :any_skip_relocation, big_sur:      "35d12434d8f64c81f644413c596410dfd2dc4bb9b457605ad86fc17d971ed993"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9df802b42534552f523530486e8504d36eb4be1422f485a48d52bf9086928108"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
