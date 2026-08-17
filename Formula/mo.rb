class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.105.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "a6e73bf5ee4997216abd56c1f78fe05afd775ffee2e30ffaf7de76215a006dad"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "867d988bb8a53bc384b0dbcc76ee6ea3aaca33e89a2bb1416c523b2c007874a6"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.105.0/mo-0.105.0-x86_64-apple-darwin.tar.gz"
      sha256 "9ed89d1f31792150db1b2cefbfda7d2e478128a93126d689840fe25f001f6384"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.105.0/mo-0.105.0-aarch64-apple-darwin.tar.gz"
      sha256 "b6a88755e9abb00d17775830eb53b3d7e532153741d1bad5a288c6a0dc9d65ae"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.105.0/mo-0.105.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "724c4885ff5acd5ec7bb1354091b62f6dec4951619302844a922734401e5247a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.105.0/mo-0.105.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb4c5846fcdcf9f6fb7bdb5cfcc47e98bf7d3bc944bd4ce497dcd9ac5ea3cbe2"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
