class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.11/archive-0.13.11.tar.gz"
  sha256 "b76de3e8ee6c7a1ace2e7292e53fc1397ac6920b1bbd46b50a2353bd146c5ebf"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.11"
    sha256 cellar: :any_skip_relocation, big_sur:      "f30219d4e6f7774b0211f65272cdd61c94133dd74e3906361d18db855b0caee0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f35a2b9ad9bff5cad541faecf3d7032a96432a30adc6a62a003c07a8e5f73825"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
