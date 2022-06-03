class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.20.1/archive-0.20.1.tar.gz"
  sha256 "a99d58247f9eb41cb1a5e2af3bb1cc2da26fa5fbd2c246dc16966d05411d716d"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.20.1"
    sha256 cellar: :any_skip_relocation, big_sur:      "840c2f77b8f4a72ae6698fae7131b9c5eb50937adb8f1e40c08c13966e010d02"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "aec0445913cf050b5ae2b394ed9faf30153c2f663d2b4ddd497ab79c57a4822f"
  end

  depends_on "protobuf" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
