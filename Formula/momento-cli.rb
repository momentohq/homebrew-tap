class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.32/archive-0.13.32.tar.gz"
  sha256 "46d28d05a9de0fe892b649fe4bfd547ef77bd4cbefeb52a2c20fd02db5c0f5ff"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.31"
    sha256 cellar: :any_skip_relocation, big_sur:      "bda4f52f5064b6f75572c59ecc587a9b065e655a067c79e7e56025dcdf6982f8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "bbd3b33f14a713a497403e47374ca6e93ffe2576b3ec0c8ce7610287709153b6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
