class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.30/archive-0.13.30.tar.gz"
  sha256 "c702365173157be7d0ee4f8355c7abea8e980bab76590f2e090101b7065f9e52"
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
