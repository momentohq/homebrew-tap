class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.17.0/archive-0.17.0.tar.gz"
  sha256 "da46e491ac65400aaf5ff2876d930107bc303bad347607ee34bd32ecb7fd98e0"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.17.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "99221377d0a3245fd7cbddd035b934f897829d768043af0527a34428dcf697b0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f14100bc2ec6792a74d59c29f496b6f898c5ee0698fb710aa3f14b833ebc68b5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
