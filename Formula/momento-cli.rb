class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.11.7/archive-0.11.7.tar.gz"
  sha256 "0ee2e4ca8c906e7d51fe86de595aa4b149ce9383d9d423019e7cd82a48c95ae0"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.11.7"
    sha256 cellar: :any_skip_relocation, big_sur:      "fe59eb8eef25393d931ee5e44100f256fdaf7697fceba4f13f31da732c81ffd8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ee88c6b0550e6635b4946157c25a190286f48bffff959c7d6a0904a4886ea5fb"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
