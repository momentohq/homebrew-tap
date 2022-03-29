class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.12.10/archive-0.12.10.tar.gz"
  sha256 "260e0c2a6dd11e9e9dcc3a8e8668b3642ae2ac45613a6c173ea6f8d8cbe89878"
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
