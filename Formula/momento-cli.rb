class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.5.1/archive-0.5.1.tar.gz"
  sha256 "f6f53dac0ad3f9d23733726746f9e7702206470ab6e3ae8631ebe9fbfc4a1534"
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
