class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.5.0/archive-0.5.0.tar.gz"
  sha256 "650f920d156e5d18edaa3f2a514d20e1098823800a3690f79f01cc972b9ef436"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.4.1"
    sha256 cellar: :any_skip_relocation, catalina:     "1e4e662c21f2bf19aad8349be3e3109e7088eee943077fdd727cb0a5293b1455"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9fcdc34dc316b85f60c726a5c63d790b0917ced7b0e13151dd3099e5f56c47a2"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
