class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.8/archive-0.13.8.tar.gz"
  sha256 "8d8e99eb40e8818010daef380ddbdcf50e84ea3bfcc1bab933bcf3055ec791a4"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.8"
    sha256 cellar: :any_skip_relocation, big_sur:      "8895a89dd7716bb7e6a79334cdd7432b468da178caa16fd38d19bb66126e02ac"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7a11d4365c533c832b9e5aebad1ec6cfd875706238f0fb17a16ad1c64b39a00c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
