class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.159.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "cdb3de2084bf187833bd21a35a2b7a58dd2cb43484bd3806bb5da0b180f4e2b6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "23328677175f4f32f34813cd72fb461aebf18044c370d13832a24fd605c02876"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.159.0/mo-0.159.0-x86_64-apple-darwin.tar.gz"
      sha256 "344499e6654097d6425267ebaa55debafd250311b949c8fbb24a08f0f1e91a16"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.159.0/mo-0.159.0-aarch64-apple-darwin.tar.gz"
      sha256 "1822bc19ea3989ec746fd19b605d4446468c1e17e7025de413bed212598da7a8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.159.0/mo-0.159.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "116886036468d5d3b7ea6aa2c6285a165717aeb98cb666731eb54c1a4a446ccc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.159.0/mo-0.159.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dddf7c6e24e0b29abb691398acd971465bb855501db12ace5d1b91dc1bafe380"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
