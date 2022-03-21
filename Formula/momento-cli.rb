class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.12.6/archive-0.12.6.tar.gz"
  sha256 "463a9caaedbd1f4eedb29e175c84dfa25c1090fb625b713a881d0853fede3cb9"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.12.6"
    sha256 cellar: :any_skip_relocation, big_sur:      "21b9a81fd7e284ff4c53f7ac453cfc7b14da07e33f2d507eabffe08f29f80361"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9dae0edba17580f3a564d50a00667f4abe5080fa49bb99957185a457a4c76f51"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
