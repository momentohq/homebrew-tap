class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.3/archive-0.13.3.tar.gz"
  sha256 "39a3beedcaa16abac55bebbdd1ed172d995ed665aa557c7f5a0a720ca4c47f36"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.3"
    sha256 cellar: :any_skip_relocation, big_sur:      "46fc4c5918b37211fbbd43da97c42f557c77a89cff7bd8de6299baab2a74b469"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d981392ef3b9c74cad942d399cda3cf75f861fb1d33c97bf9c1c1f740bb2e17a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
