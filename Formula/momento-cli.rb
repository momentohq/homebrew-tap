class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.34/archive-0.13.34.tar.gz"
  sha256 "f6fcae408006278c50028147d557742e2e19d19ebd09ab1aece82a336195ef9a"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.33"
    sha256 cellar: :any_skip_relocation, big_sur:      "409b2698a84e2cf8be701fbc2787eb73c687e57e8cf0459d3c2df58dac5b234f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "303f6cf32752828eda34c4541627c5f4925eed79141b370d1adb083be4b1ba1e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
