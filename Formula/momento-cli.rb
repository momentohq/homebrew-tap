class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.6.0/archive-0.6.0.tar.gz"
  sha256 "7df75cb3eb4b2abae4fb3cfac0ec315469e0f309928c35c4fda7ecfbcff1dcb6"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.5.3"
    sha256 cellar: :any_skip_relocation, catalina:     "a37aebf9742d476c9f42e39ed6cf2b2f9c5fb0cda1acfadf12932c3abd611760"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1cea80e3bf77a8cea39b739066e5e0e608aa8340944251eff0cb06030291b12f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
