class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.16.0/archive-0.16.0.tar.gz"
  sha256 "9ec40f9d2effed0e4f7173d5b913edef96f5ffd6c0430f22ce7604eb2714aaa0"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.15.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "8e201e6759e6295534923d9cc694099b0d4540bfa389343603e9abba8f65f55a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f22b8f58327f5041c06d8bacd992093a91b23dd4cc2b80b1bdc1cf180a7868e9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
