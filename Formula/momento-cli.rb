class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.16.1/archive-0.16.1.tar.gz"
  sha256 "b824d1e68710be519f49dabb353aafeb7388b4da6b8440a9c98242f2962fc19c"
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
