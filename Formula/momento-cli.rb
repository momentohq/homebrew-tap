class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.8.2/archive-0.8.2.tar.gz"
  sha256 "7cc01bf5dac811999a9ff73c23d84c4c4a34ad0c59c7bc1d2d2641ff9cbb5034"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.8.2"
    sha256 cellar: :any_skip_relocation, big_sur:      "157ac983442abf0ec2fbf4f55b8e705b14f88e0eaab3014a25dee90838da6aec"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "49af45c9a9cba7a45270af303571f552e49347566e51c0cf69b9981ce9e9e2d8"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
