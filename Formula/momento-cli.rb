class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.22.6/archive-0.22.6.tar.gz"
  sha256 "900d7a7e58027ba07d1f9593165093cb9ccbe3527f0db6242f7e028819d98b63"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.22.2"
    sha256 cellar: :any_skip_relocation, big_sur:      "8c497e48e7028d22bdeaf8443c3fc9570acb93bb3e1ccfc7377f4176619aac67"
    sha256                               x86_64_linux: "1ff3faaef03d5d16619fabd6ac07e4da251b75af193cdc9d21c7963ed28220c1"
  end

  depends_on "protobuf" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
