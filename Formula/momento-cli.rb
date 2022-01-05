class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.7.0/archive-0.7.0.tar.gz"
  sha256 "24576bd0fc65c4fe52deb008e9fd1dbca64d49e34e4e40e6f0f530608389dc27"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.7.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "f3f8eea38fceea37d43b49b8778121a03dcb6a7cad12cb34015b2ec20f2832ff"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9c4b8f67828fbdb64bd499e1a32befefe5bf281da175aff40be42ffdfdbfdd7f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
