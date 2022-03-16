class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.11.9/archive-0.11.9.tar.gz"
  sha256 "84998f7304207f29a7c1b36b50c6a2a6d01c44d958878a00b3c0646d92eb46b2"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.11.8"
    sha256 cellar: :any_skip_relocation, big_sur:      "470684dee2fe953fbc6aa94993ce6b9f480c667fea69e891322a60007cb323e2"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8f38e495597e9241153221d8f2ce27a3268e47afd28d91193cd8ebd27e72ab4a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
