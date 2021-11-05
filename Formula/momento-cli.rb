class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.1.5/archive-0.1.5.tar.gz"
  sha256 "67487ffffff275e4c316a38e2248d7eea70f9f9e2d79d0df8a6abe14a933f46b"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.1.5"
    sha256 cellar: :any_skip_relocation, catalina:     "5ed43f6a378d89ae71303a2d2b3b8900601cc4ffd99af86944a969106f14e971"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "62d393edbce042f332bd7dbb6de80a6cd2c24ae389a2952380f7b2ce9dc498c6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
