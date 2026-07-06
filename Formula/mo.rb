class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.27.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "982fa2a0372cb683cb90a51760397b1cd9ffa604e6d6bc04e3bb7e1fb379d7c4"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "9a727fa103e35a6763fc058233b33f1328498204fd6c4f93f9f2c50597c78f1c"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.27.0/mo-0.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "448f5da1dd398e16200c38d575c7235d7d5801dba1117745616ef314239fca55"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.27.0/mo-0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "eaf9fd44bf1542e17bf6eb255dcefc10fe71f0bc0de84f33b803c88524de335b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.27.0/mo-0.27.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "853babf8ab68eb0e86e81a0afbd7a227fc68f823654362d2514c6b914547e401"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.27.0/mo-0.27.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9caebb654ebba2a32107c020df18fa2005bfd43d8ffddcf61802b6566b114a30"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
