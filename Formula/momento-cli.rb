class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.5.1/archive-0.5.1.tar.gz"
  sha256 "f6f53dac0ad3f9d23733726746f9e7702206470ab6e3ae8631ebe9fbfc4a1534"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.5.0"
    sha256 cellar: :any_skip_relocation, catalina:     "4e99fcc7d982fff2e4a0272f905b4519aa52adb2484549c64706df08e0d1c164"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "658b6d4f695c3521bf811f7f30931cadad79083adbc2ee071f9a6fe639c74a77"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
