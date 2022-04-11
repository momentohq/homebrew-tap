class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.6/archive-0.13.6.tar.gz"
  sha256 "5a3bacac62ec5d079c629733721eb702028515d4f306900516af121c8205bd88"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.5"
    sha256 cellar: :any_skip_relocation, big_sur:      "0e79a9ab2e12510e3e6ec8b0fd7f9c248c654aade282c11fdac9d90425122beb"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "115426f6f6cdd55aa9f734fde4d9fb42e6474f2f4c27798737b3e600383f53f5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
