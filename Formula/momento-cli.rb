class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.17.0/archive-0.17.0.tar.gz"
  sha256 "da46e491ac65400aaf5ff2876d930107bc303bad347607ee34bd32ecb7fd98e0"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.16.1"
    sha256 cellar: :any_skip_relocation, big_sur:      "61b54414c4c567e7058488a2d18874844fa0802ff18a1a88a9f030af3c467426"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0e42636adf2473452863d3c713c399d8301ad9f102385e61dabecf3ba5e25528"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
