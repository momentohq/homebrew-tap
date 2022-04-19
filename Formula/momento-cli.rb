class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.22/archive-0.13.22.tar.gz"
  sha256 "cf13b47c9c9f1155e4fb7d4f29c777e92b9416ff8495692c57c8b4c649a29438"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.21"
    sha256 cellar: :any_skip_relocation, big_sur:      "19478e084d8c8fc5ee3859ea3a976599864bfd4797b542eff091847dea2182c7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3b2bf4ed461c0d21ad3971aa0b8dd2e3d46b8016d4109471f7ce989138a8784c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
