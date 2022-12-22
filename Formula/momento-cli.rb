class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.25.6/archive-0.25.6.tar.gz"
  sha256 "dfbc44348dba28bf592555c39264ce62f70484a6f552fb47799275eecd820871"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.25.6"
    sha256 cellar: :any_skip_relocation, monterey:     "53e4afe4424e417ebfebc409c1acf087a61796ea7098adf0d80926fd8d764b36"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "bc04df4855a526debe741f833a258d409a4d8883a2a470a9ec536359faeb6b1f"
  end

  depends_on "protobuf" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
