class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.76.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "3f8cfb2a02e93d864c119426a2ecaa5dd3b4ee3749d86de3563fefb3cfc7e50d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a319f01b97e2d37e1fe964efe6773994b79380edb325d35c4713b2338070d71a"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.76.0/mo-0.76.0-x86_64-apple-darwin.tar.gz"
      sha256 "138d69a6b4de068d2aea1e540ef19d893b3f79309875f5f91afc369d21ca6eab"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.76.0/mo-0.76.0-aarch64-apple-darwin.tar.gz"
      sha256 "de7b29a3f33f7a6c43d21012d288d44e5f014d66ecd2f45b6445407d459da22b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.76.0/mo-0.76.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "51b00d5b39456ef47cc528f271c91d70d12da73652732c72239ede025c7754a6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.76.0/mo-0.76.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1671dca9d82013803ef4be615e7789d4b40aac257fde58d509f8109c0aa309c7"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
