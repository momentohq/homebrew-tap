class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.5.2/archive-0.5.2.tar.gz"
  sha256 "deb9964ff01286b92e603f99c348cbe3a40fd84a7d0aba39bea57c1d7f55e467"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.5.2"
    sha256 cellar: :any_skip_relocation, catalina:     "caa3319e30a8f2cc1c026fefdb11a1e7f25294939879b12a47dca1acfbc854cd"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1a84cf5e0830e575daec02427b573ce4de6619ef5463e0c290fe9eec7525b396"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
