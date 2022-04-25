class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.14.0/archive-0.14.0.tar.gz"
  sha256 "3017fbc8ecc072f938a06a5957d29cbc42f61dfd180a02ae86db17dc6b3fc760"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.14.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "24541a41e36d98e90aea831d0b8e99536a0f5f202f33442a77ed976658ea4de5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a41d632633fe2641f87572725c601563984a976aa2aad4c1bb4f334611728eba"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
