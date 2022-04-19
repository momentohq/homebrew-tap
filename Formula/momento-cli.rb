class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.31/archive-0.13.31.tar.gz"
  sha256 "87fab9d8ed67a0f3a1a7b52858943aa604f743b577315f2259ee5e94b39711a4"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.30"
    sha256 cellar: :any_skip_relocation, big_sur:      "adc4af8fe90ad9775ab14de46941671ce24bdf5834fe00325da0acd3094b8b9d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5f3ccf50d2068401e3eb229bddcad85950c413c782e1fab9f61e466455c4f3f0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
