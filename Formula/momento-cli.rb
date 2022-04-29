class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.16.0/archive-0.16.0.tar.gz"
  sha256 "9ec40f9d2effed0e4f7173d5b913edef96f5ffd6c0430f22ce7604eb2714aaa0"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.16.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "fec94457db9bc56174ebf223a8511a9f0c277d22c6dd2a6bf0946f36497a690c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f5e94222e4ff529af459b5b1d3f52deefed8669b441108cb6e4991efd39bc8f8"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
