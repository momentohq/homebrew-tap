class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.11.8/archive-0.11.8.tar.gz"
  sha256 "cc17c865d10dc3176eaa9c23cd9f55525b14323248b98385ebb825affbe90e6d"
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
