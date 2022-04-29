class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.16.1/archive-0.16.1.tar.gz"
  sha256 "b824d1e68710be519f49dabb353aafeb7388b4da6b8440a9c98242f2962fc19c"
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
