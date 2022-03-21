class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.12.6/archive-0.12.6.tar.gz"
  sha256 "463a9caaedbd1f4eedb29e175c84dfa25c1090fb625b713a881d0853fede3cb9"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.12.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "2f39c8cee2455715766b648d96de2ce3c3e8a85fc4a4ec349e9637a5c8e0e33a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9359ef1599df488c6a467301e0d863c3f885e4725738fcf36e7e670ae5faf7dd"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
