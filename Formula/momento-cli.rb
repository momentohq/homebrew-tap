class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.11.7/archive-0.11.7.tar.gz"
  sha256 "0ee2e4ca8c906e7d51fe86de595aa4b149ce9383d9d423019e7cd82a48c95ae0"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.11.2"
    sha256 cellar: :any_skip_relocation, big_sur:      "a4361b3e58b240207a09757eed644ff2d909e6b3125ca49572442890de0f3ea6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "48a2fe5478f013375a2a5b1511a0fd871747759d0c6b3a170f35b45cb862a087"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
