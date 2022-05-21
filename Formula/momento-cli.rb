class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.17.2/archive-0.17.2.tar.gz"
  sha256 "70c3ce99f171af5dbe3b806ac12821f0ca7948c5f8cfece2f2f407ad85b948fe"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.17.1"
    sha256 cellar: :any_skip_relocation, big_sur:      "022c549bdf45d24c533065a3a51905481a5902a37085f0c8512844378df21912"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3413c7f1868e4f00bb384d448565c1174f25208e3fb6a97c4085e7b05ab53f8b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
