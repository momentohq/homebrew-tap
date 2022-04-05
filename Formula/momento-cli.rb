class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.3/archive-0.13.3.tar.gz"
  sha256 "39a3beedcaa16abac55bebbdd1ed172d995ed665aa557c7f5a0a720ca4c47f36"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.2"
    sha256 cellar: :any_skip_relocation, big_sur:      "3d262aefe30bd4d8ec2863154dff7bbe6080723963b216f017e3090d88055001"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6864debe5c2eea3edfa05b0dd8a91cc389c34c174fc3f826716c8b92dca1de6c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
