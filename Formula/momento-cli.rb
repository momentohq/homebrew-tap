class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.19.0/archive-0.19.0.tar.gz"
  sha256 "1c1536c1bf8b349b0194e294e0faff43bcb438b4290302698832d16c305bcc3e"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.19.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "43f6b7d93e9779d6e9ee0c28a3b4badff4a6e85020388af1940911b2274f0789"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "073258cce9e8c19353870d4de70f8fc90a2e9a27cbe3a2a7c7cf49bc79dfbfd2"
  end

  depends_on "protobuf" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
