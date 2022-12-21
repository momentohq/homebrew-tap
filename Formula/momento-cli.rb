class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.25.5/archive-0.25.5.tar.gz"
  sha256 "152a8719fb51762076c7683fdfe3752bac2805f93330b5a6f6d149ef30fa40ba"
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
