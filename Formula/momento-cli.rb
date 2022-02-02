class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.8.0/archive-0.8.0.tar.gz"
  sha256 "bc216ea70c3239964793f62fc8313cb5c80f19528547298fd05a75931d2de184"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.7.2"
    sha256 cellar: :any_skip_relocation, big_sur:      "7e2c5bbe1da2360ae326bfa8339672c01c1666545eccb31b3cb5fef619ab4b07"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "52019a08c6b62a3d8c682e78d50f028bd5ee10dcb899b1fb3d3e4de3fb30fc17"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
