class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.0/archive-0.13.0.tar.gz"
  sha256 "2bf2039ca65358aa67080f1320c4ea575ee1ba84398f065d8bccf24de00276b9"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "1d3e76b9ae82e3a50c5645a929826ead9829801bae55984611e624d47e8e5305"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c1a00f353d361cc035800cc30b8a929e07026ee805ad7052b9cf853e2e5a096f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
