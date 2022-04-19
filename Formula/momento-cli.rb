class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.28/archive-0.13.28.tar.gz"
  sha256 "de2e74cde21fb1810ef337d2d01da85dd1521cd5d2d3c06dd851a2b44a4e2ad3"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.27"
    sha256 cellar: :any_skip_relocation, big_sur:      "28fbae0fecf8e7d6c0751d19eec13df096212c4893b21a307d85aededd6ec259"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8a82eabf3edaf8d89ae26691d1394f4a84f3ce056e9c343b36b2a806e4dc8422"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
