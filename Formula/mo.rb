class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.149.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "4a34101bfcde667c18b4ad241c77bbc30d4ec740dbe492f4bbdf7c435e6dd570"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5b43fb12c2cca36598252a91bd66ccc18eea9e1799dedd3bc25cda11213978cc"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.149.1/mo-0.149.1-x86_64-apple-darwin.tar.gz"
      sha256 "5a8f8b8330a8429a10b22969adb2434e46a4f11ae121b2ff5341a1348de3c161"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.149.1/mo-0.149.1-aarch64-apple-darwin.tar.gz"
      sha256 "0540e9b0760ed294700d745c4bc79f0a4d4b8848f960d184e6b2c360e1e87db0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.149.1/mo-0.149.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d52e348f8b037250a4aea6321d059bf0dac9a5936760be6ebb8189adf65ba904"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.149.1/mo-0.149.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d793a0315ce795d5ac37ebed22e20ed7fdbdd45b5c4dc6434dd8139d186339f"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
