class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.11/archive-0.13.11.tar.gz"
  sha256 "b76de3e8ee6c7a1ace2e7292e53fc1397ac6920b1bbd46b50a2353bd146c5ebf"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.9"
    sha256 cellar: :any_skip_relocation, big_sur:      "2412176a629fcf5b2baf07142de2902d382a439b369b3e6c494a2a1f0cea86d1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "98337fd370645a7a9626300edc676097fb993942026c4ad6b04aae0f89024003"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
