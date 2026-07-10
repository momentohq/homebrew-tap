class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.38.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "406c77e04648e31466962e66fb33533689a876a99f8b7dbf48c2613e64b5a785"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3187dcab5f6db2a03a50829574e57a84e0df6c1d03703a142e08da2a27eca095"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.38.0/mo-0.38.0-x86_64-apple-darwin.tar.gz"
      sha256 "c3ea2ac03613a7c4371472fee62a7efe58886253a892fb96e593d68d1e02abec"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.38.0/mo-0.38.0-aarch64-apple-darwin.tar.gz"
      sha256 "b07b24477f28a4399cab859d2945549daacc401b6a9b7a8484571d4fed2d19ee"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.38.0/mo-0.38.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "106d39b041cbf753eab5b54fc50486c83e8c459be823ade47d85f3fa92d46bc2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.38.0/mo-0.38.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "add2b37c856eed414a3e8d1e8bb6d87d91753298cf7e4c31c73ea7d607d9a5bb"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
