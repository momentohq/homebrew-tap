class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.99.0/mo-0.99.0-x86_64-apple-darwin.tar.gz"
      sha256 "60e939e5bdac138f7a6aa7c4b6734216f05eb4115e4c00f4010f6c1e6da27da0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.99.0/mo-0.99.0-aarch64-apple-darwin.tar.gz"
      sha256 "6c2f9acb32789ae2304729be6c7c668845f079ef07f96670829dc3404e2c362d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.99.0/mo-0.99.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "505a4704a438bea2e2d89f84073a9d0c627ff059f4c240d5c2c3e9163e000ea3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.99.0/mo-0.99.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb0f43acf1daccd4d7bad6dbd667db039f5bb6e22b01c7ac385c3c82860ebdcd"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
