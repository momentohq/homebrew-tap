class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.8.3/archive-0.8.3.tar.gz"
  sha256 "bd143d355cc41208398a16778b09592ca39669a2e2d2899441bb83bec3a150cb"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.8.3"
    sha256 cellar: :any_skip_relocation, big_sur:      "e194b65cff096b15079104980d1aa7181ef48771b6f217326408820acfbf1d8d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0bcd129d8cd54552401e961937d9b683c4e002145f011b7df3030e1ee5390ac8"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
