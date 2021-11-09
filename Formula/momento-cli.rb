class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.3.1/archive-0.3.1.tar.gz"
  sha256 "9eaa8ef7e7f7f621972dabf7d400b9c97e988725c597e7f9e3c4d41632a1865e"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.2.0"
    sha256 cellar: :any_skip_relocation, catalina:     "91564309adf170faf4c296c9844932aea21c01b71ed655427ab03acdae8e8ef6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "930946b0c41e1b4587e946f608142370cdcf8fa22e31222a7cefc18689ca5bba"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
