class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.19/archive-0.13.19.tar.gz"
  sha256 "c870fd5032433e473bbf84c7dec8737148ea32567ba8198776c87b39f3f8aabb"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.18"
    sha256 cellar: :any_skip_relocation, big_sur:      "2fbb20b2e05e8ddf08b8ad6f3d52a71ce91e85e5e70ad4bd1c48122856511314"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4e2059a5fe7d94769c730f79d6f1fe5d2fc17fa8194ee165093b2258f7c1afc2"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
