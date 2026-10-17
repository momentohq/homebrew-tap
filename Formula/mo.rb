class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.161.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "578b1ce67115f5a9469d1aa924fe9a7ec10da43ac65fbd31217fa4e2677c1125"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f77b0faac7e648a8195b8e579bf73ebd4449b6f208a9dc4eaf674ade2f8e6fa0"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.161.0/mo-0.161.0-x86_64-apple-darwin.tar.gz"
      sha256 "bf54eef97fdacb7fc0822343d3daf6f18bf53db7ac977872e7a0c974f67f5026"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.161.0/mo-0.161.0-aarch64-apple-darwin.tar.gz"
      sha256 "a4c7c822482bf8075a5a8e88db7ece02d82e8e6f75099b27ac2caa134bd06b05"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.161.0/mo-0.161.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1af3a4a3171cdb7313ad34a21ab80557e8ef565e0121f3f8e7a3c0bfb8a9fc02"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.161.0/mo-0.161.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2b0ee122cf4c12aeb882eb3844a65d0268482a2a2c27aef0837e072d8c74985c"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
