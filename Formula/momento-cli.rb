class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.7.2/archive-0.7.2.tar.gz"
  sha256 "0c020d4779a3123100f749c6cb7beafc9a771392e55d021374020935f47fede7"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.7.1"
    sha256 cellar: :any_skip_relocation, big_sur:      "d60035d4ea7439d1deb00884c9b9fb914166f6ef7f79f86c8a49cc5a4d07829a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9d98e58b71667db061eb7cc9fcd96de0a42a5aec52072b402ba12113268ec86f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
