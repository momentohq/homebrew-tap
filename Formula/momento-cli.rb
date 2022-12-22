class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.25.6/archive-0.25.6.tar.gz"
  sha256 "dfbc44348dba28bf592555c39264ce62f70484a6f552fb47799275eecd820871"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.25.5"
    sha256 cellar: :any_skip_relocation, monterey:     "763baed868f9275fef492fdafd4bbaf60c4312362427e27644cb26065e190902"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0c7da226879486e283133f686d744ae0f5f17ff44bc9ca35c5a766245b924643"
  end

  depends_on "protobuf" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
