class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage ""https://github.com/momentohq/momento-cli
  url "https://github.com/momentohq/momento-cli/releases/download/v0.1.1/archive-0.1.1.tar.gz"
  sha256 "19cc8336d0d0eb2e321ccf0eb3421e0e2854237dd64febefe23108f962b6f401"
  license ""

  depends_on "rust" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cargo", "install", *std_cargo_args
  end
end
