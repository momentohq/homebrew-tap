class MomentoCli < Formula
  desc "Momento Client CLI"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.1.2/archive-0.1.2.tar.gz"
  sha256 "8c3073cf893dcd14090c11e063019dc988fcbfa6b0a858664f603dd6c1d9bddf"
  license ""

  depends_on "rust" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cargo", "install", *std_cargo_args
  end
end
