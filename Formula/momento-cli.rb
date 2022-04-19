class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.29/archive-0.13.29.tar.gz"
  sha256 "4c423ccc8152c39a4963741782c6b8a1f8d9c26ebf9f7c399a92bf789953418f"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.29"
    sha256 cellar: :any_skip_relocation, big_sur:      "d7c21931e6c805b784f1f11ea7c10b68d83b239fcd9e2f3e79a43e37b567f8b1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b070503c2c487c88bf51b34f095e11c5303b3db078bf45201abda78eeada6097"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
