class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.12.9/archive-0.12.9.tar.gz"
  sha256 "bf9517e778b2e77c14abfa03334d8b1afb362ddc9bb21bf67e9b56110b556abb"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.12.9"
    sha256 cellar: :any_skip_relocation, big_sur:      "211efcc6498319c88522674ffbc09056f67f70bd3a683d893a4b1e4c862497b7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "beec2cdf69a43682f7af7f335004e6f4d95d18b32a29089d26b2d53c1047a6e3"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
