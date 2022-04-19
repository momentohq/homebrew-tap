class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.26/archive-0.13.26.tar.gz"
  sha256 "ed13d4fd7e8f7185acf729c0a67b3722a1316c26de563876672e98729a19efae"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.25"
    sha256 cellar: :any_skip_relocation, big_sur:      "9e66a83fef8df49b43e9dd15ac690d36c30c456d293e4d785bf7b732dfd773c4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "58039bfecebced8295eefa2f6e2fee2f4109582ce1b1147a671a59e83a22b93d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
