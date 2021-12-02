class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.6.0/archive-0.6.0.tar.gz"
  sha256 "7df75cb3eb4b2abae4fb3cfac0ec315469e0f309928c35c4fda7ecfbcff1dcb6"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.6.0"
    sha256 cellar: :any_skip_relocation, catalina:     "cc5bfbf73031928358927a064d274be1707feaf0cd302173b86a676e1321727c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "aaa5f01ce8cb4619a50ad87d833f26209d6cf6e082501d8124dcfe5672050473"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
