class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.10/archive-0.13.10.tar.gz"
  sha256 "274c212e0294b8e67636755aa3c0fe567aa75f27e9d39bfc2482e5cb5afe581e"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.9"
    sha256 cellar: :any_skip_relocation, big_sur:      "2412176a629fcf5b2baf07142de2902d382a439b369b3e6c494a2a1f0cea86d1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "98337fd370645a7a9626300edc676097fb993942026c4ad6b04aae0f89024003"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
