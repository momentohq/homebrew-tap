class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.25.4/archive-0.25.4.tar.gz"
  sha256 "46732f59df3047179d63b639445197d6d5a828237f5b04b04fa993db17fb0f85"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.25.3"
    sha256 cellar: :any_skip_relocation, monterey:     "d5cd5b7434e4b585ee9b91d1b438a7aef1f66a190919206637a2259f740ecac0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "24aac9de906f4d0c4cd094cbd06e5a76f101023842b93d29aad713270937b554"
  end

  depends_on "protobuf" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
