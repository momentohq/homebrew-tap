class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.18.2/archive-0.18.2.tar.gz"
  sha256 "668962174c679b6fb20d55f29b582996984d56c1c316b1bb91b629ba24d422e5"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.18.2"
    sha256 cellar: :any_skip_relocation, big_sur:      "a07223ac15327e202ab7d85cded10e5cc055e70bb7bc8389ea241a5727442c8a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "abc2411d8c5ae7621c18df73394d9cf44a12279bbf2b88113bc562f77074f79d"
  end

  depends_on "protobuf" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
