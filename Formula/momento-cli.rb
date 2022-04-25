class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.14.0/archive-0.14.0.tar.gz"
  sha256 "3017fbc8ecc072f938a06a5957d29cbc42f61dfd180a02ae86db17dc6b3fc760"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.34"
    sha256 cellar: :any_skip_relocation, big_sur:      "73d0141306ddfdb7fc268bc4bc413339ca4ba98a8c935b553e07e46dbef483c9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "97bfc4be379f03a252ff1c75e6bd3f177ef8c6ca727fb46c4ba724f66cba9e1d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
