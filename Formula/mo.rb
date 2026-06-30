class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.11.2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "789692a990a05e74e5a195d86ef015c85f4d6d24097008bed167c88031071ff3"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "02848e510109135dc18b5e267eb84e5ddbb7fd1c82268b9bca6a5ad615d77205"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.11.2/mo-0.11.2-x86_64-apple-darwin.tar.gz"
      sha256 "319ab610b622edfd0da390ec791f747ded293cd89a2a0fe70b1546bdbe11801e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.11.2/mo-0.11.2-aarch64-apple-darwin.tar.gz"
      sha256 "9eb1466a3e1b34fe7111a73552f1135eb1b8a2747fdc14545bf8f7ad8b227df5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.11.2/mo-0.11.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb62cfb91c9302042bbf88f62b9421acac2ff8e112c34fb4716c7f4281a972a8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.11.2/mo-0.11.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3260a4aac52426ec714ab0de5fc5ac38ec684306cdd7adcb1021f3e1003a4961"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
