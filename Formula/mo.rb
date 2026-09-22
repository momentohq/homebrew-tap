class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.138.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "24fc6d3fd8deb57341c2eac45358c1863569d6b5db4c06c280061bdb32870e90"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6f024748055d1ff6f90838b0914b0d89ce820d289c1ed3570074bd4c1665de09"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.138.1/mo-0.138.1-x86_64-apple-darwin.tar.gz"
      sha256 "ee9c13e5f42477013145a787ef0c87cc943b9bfd6eaaf4e915c14ee04e5800f0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.138.1/mo-0.138.1-aarch64-apple-darwin.tar.gz"
      sha256 "2335a229344826e6c0d20e9ca70f83664d1bec44a440bae8ba28d02f7d08ea0b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.138.1/mo-0.138.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8f64beced41eec76f328d0696a5ca592cb9d6889d61341a15173d2e3712ef6b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.138.1/mo-0.138.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6d8f74a116e5eb3d7242f9a3da572b10d7f82049680d944c7952a25c2fe1bfb6"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
