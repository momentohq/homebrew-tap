class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.78.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "907f49b6973cf3b42357a5b4cb48041c0faf305c048921b07b780801d53937dd"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "77288bd6481cc2fb2c7fd22e2450e650ba2da753616ca66404fa9aed17d59b85"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.78.0/mo-0.78.0-x86_64-apple-darwin.tar.gz"
      sha256 "b2c6027b70b06f40e37b0864739ebf388ac6d76f3e7aba922a00a1f906e8ec33"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.78.0/mo-0.78.0-aarch64-apple-darwin.tar.gz"
      sha256 "a2e6c83a34dd954892f9791ef592342971810c9258ed9c67ac55a4e445af4a80"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.78.0/mo-0.78.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb9ed24241ac719883a594cea77dd088cc79531ea450f2527968c841ec31f848"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.78.0/mo-0.78.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7223a8067968e6fdbb050287e39227463d9a430968fd9a7f18c68a653c812690"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
