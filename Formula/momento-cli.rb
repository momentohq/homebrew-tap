class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.8.0/archive-0.8.0.tar.gz"
  sha256 "bc216ea70c3239964793f62fc8313cb5c80f19528547298fd05a75931d2de184"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.8.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "18e0a9a2782ecebaea586cbc951f979fb2049c4d4a097a3624a331fa212b82b1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "45d3c2111c86aa9a2561f1907affa5d76c648b9e681405040914864fc9588144"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
