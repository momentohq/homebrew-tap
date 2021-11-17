class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.5.2/archive-0.5.2.tar.gz"
  sha256 "deb9964ff01286b92e603f99c348cbe3a40fd84a7d0aba39bea57c1d7f55e467"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.5.1"
    sha256 cellar: :any_skip_relocation, catalina:     "8f9c9a3729d522ccbb950ca6c6c82db1fa164890036785790c221563dfe8a112"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "18cee0f27324f566570d6bdaf30fd9afc8dbb893b31e505854b861e2482f1e0a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
