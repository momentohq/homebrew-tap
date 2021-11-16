class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.4.0/archive-0.4.0.tar.gz"
  sha256 "d07c4bfd0076332c154c732588d7706624d243a2d9cd538ce6f8210acb04cb80"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.3.1"
    sha256 cellar: :any_skip_relocation, catalina:     "5e0a5949fdf668df111615519ab97f3e1cdec1480bbd16a9506ff49dde7a6baa"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e7f114a918c4894f33910817e349ca864b0ef2a6087b81e9cc037dffefd80ae8"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
