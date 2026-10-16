class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.160.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "928c8fa918eabe75ffb4233d094d2b7d69d355120c2c398a344a667957c02cae"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8b93a37c2f05823d2cf3f9df3333e4274954e931eacf3a3386d3436e785e4575"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.160.0/mo-0.160.0-x86_64-apple-darwin.tar.gz"
      sha256 "58466069695dd8d1ec1e3022fc97ac335b6f179840713eb9845ffc706a7a6f11"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.160.0/mo-0.160.0-aarch64-apple-darwin.tar.gz"
      sha256 "36b2810385a7a45fc75b0ed58f0747f14304d541895aa49434d4c0a25869e980"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.160.0/mo-0.160.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47642caf7d68c3217d2fede87307fe0cbaa12c9a840a61679051dedcf7afb3a0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.160.0/mo-0.160.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "301e943eb6bf559ccf82404963c2522b658070eb06b9e1c05e2382c1cfb4e771"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
