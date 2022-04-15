class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.13/archive-0.13.13.tar.gz"
  sha256 "3709f73dfe4cb2a8cf8949dadf8b3c254bb3d7d7ae7fd730cced53529064117a"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.12"
    sha256 cellar: :any_skip_relocation, big_sur:      "1fe333fa3be61afdc875291d7dbf14b4da39028d1faca7b0e2787894733e8b80"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f01c76099d54a159bcc786ee93297feffe3c094f6d94ebd65c54eaa6720ed345"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
