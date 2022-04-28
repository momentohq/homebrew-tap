class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.15.0/archive-0.15.0.tar.gz"
  sha256 "eb5a5972c272810c2b177a4d095eaa10f35051236dca3ed03c3833411f97e83b"
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
