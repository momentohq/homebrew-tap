class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.27/archive-0.13.27.tar.gz"
  sha256 "7339ca26bee5a7a9e8dce226dd71231439b40671ea0487610560ec4be04a03d7"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.26"
    sha256 cellar: :any_skip_relocation, big_sur:      "e7035f5570b4a1194b3840027dc83ee0bc329e3491c526329f477f13fc402b7e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "798f7c5c4095a2420af083d68ed0dcdfae1f89fa9532e5f9d6448b0b8c7f570f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
