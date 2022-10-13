class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.22.0/archive-0.22.0.tar.gz"
  sha256 "7e17970280f3622afdb546f63c57d1bc98d7885fb7b7209e47e88a3cd8ece6c4"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.21.1"
    sha256 cellar: :any_skip_relocation, big_sur:      "0e13e2cfcfe94acf8348c25c859d2b1b62cea6481caf36047ef7de6697c83adb"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "74214cf08d2920816fab78fe60af0677d030428304955682ed47bb086d637688"
  end

  depends_on "protobuf" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
