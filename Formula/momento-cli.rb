class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.11.2/archive-0.11.2.tar.gz"
  sha256 "215005f176ba2cf32286399c0240097bddc3b4ff0e38c4003f20aff5b9b26e60"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.11.2"
    sha256 cellar: :any_skip_relocation, big_sur:      "a4361b3e58b240207a09757eed644ff2d909e6b3125ca49572442890de0f3ea6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "48a2fe5478f013375a2a5b1511a0fd871747759d0c6b3a170f35b45cb862a087"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
