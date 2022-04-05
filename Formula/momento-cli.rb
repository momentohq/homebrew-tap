class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.4/archive-0.13.4.tar.gz"
  sha256 "b0c510c24cdc3d5f8cd4c5305d26cb57fd2ab8b9f284e5042267d16dbb5cf63f"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.4"
    sha256 cellar: :any_skip_relocation, big_sur:      "2266e0474ce04be038749c279762fd431931b7cbb0464a467a14a5d5f9147983"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ef8f6f640ffa8162c71b24b47443d5f504e4735d339422d73de94878e53e93d9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
