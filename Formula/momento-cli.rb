class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.21.0/archive-0.21.0.tar.gz"
  sha256 "067246fb8a00852940ec08bbe8e66948e6086654cd4e9ff2b8697ef78b45d1fe"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.21.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "36655101041767240a0def99dc1df2f31f866896dc797c7f5000f0157969bc15"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "45c1b6fe39b6ec7bf33318d307defd9f31657b3dc55e5397b30344c0707acccd"
  end

  depends_on "protobuf" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
