class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.0/archive-0.13.0.tar.gz"
  sha256 "2bf2039ca65358aa67080f1320c4ea575ee1ba84398f065d8bccf24de00276b9"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.12.10"
    sha256 cellar: :any_skip_relocation, big_sur:      "3b4c89a2a93c0ddc09e20fb553829b69486318a501840e046654051683f7275f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8a9b2c8a5d3bec412f46d9f7d970b0f8acf9425290423ee8a8dc6132d708a62b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
