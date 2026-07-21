class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.62.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "45f6f87fa472ea4eeacaddcf04233291b92409582a01895cfc6d5a205618f574"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7e17468bb5efe4e8b8a89e9569a2423f31d9dc4af2d8e704b4bb9681adb2db6a"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.62.0/mo-0.62.0-x86_64-apple-darwin.tar.gz"
      sha256 "0aa1a28b9d4c4ffaf8b158edc4fd4c634fea4221f4662a7959ab4a2c91288b48"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.62.0/mo-0.62.0-aarch64-apple-darwin.tar.gz"
      sha256 "3c028d7630a53958ca3bd8ad195a03b978391459bc36d3e5075e38af9ad19d50"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.62.0/mo-0.62.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4a9a852279f0078c5b0c971e6b5a8abbfd0c295c9ff4826f4801dbf8b498623"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.62.0/mo-0.62.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "17e020fc7067cdfe9d4f2c020d1d9bace18de1487af56ec4e9c55db8405adcbc"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
