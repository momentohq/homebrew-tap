class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.18/archive-0.13.18.tar.gz"
  sha256 "f3d274bb01f2acbab5ba0314fb0ca5dd41d39078a89027c42b62c3bfe16a9379"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.14"
    sha256 cellar: :any_skip_relocation, big_sur:      "165712d4c96950798e191a85e4bd587a67fe3ed134a0fc9372686160e570d69a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0556d43cc5436bc3cf77b9dd720a35a0e398b714df33cf20578068cdf26d98cf"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
