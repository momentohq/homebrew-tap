class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.25.5/archive-0.25.5.tar.gz"
  sha256 "152a8719fb51762076c7683fdfe3752bac2805f93330b5a6f6d149ef30fa40ba"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.25.4"
    sha256 cellar: :any_skip_relocation, monterey:     "13df2ba373237c9b190c917fc5f6c86306cf4bc4987f28c2c84a06530628487d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1e82288f298640116e35f918d8b8a203350ea71ae7590bb570e916ecbf366c2a"
  end

  depends_on "protobuf" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
