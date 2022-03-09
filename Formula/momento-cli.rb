class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.9.1/archive-0.9.1.tar.gz"
  sha256 "f84759019c8543bf8da20c3ce686ab4a7e7b33e7fbd50c53fedd5ab0773e313b"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.9.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "863564443267c5bdc1208ca35c2ad91c53f4a974034f084cd10e57a3744d3ccb"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "750db0405dc50937827db6229019354e396762ab9258b9357e8ecb7123efaa28"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
