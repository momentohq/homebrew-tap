class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.174.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "20d180aa310cff324419f80c49885117e7719272852c3ef464dc966a593f45f0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "270c319dcf3ade0ef724ec667fec07fba67156b0a17c226222bca5f360ebf812"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.174.0/mo-0.174.0-x86_64-apple-darwin.tar.gz"
      sha256 "27c120e4667aa3afd78c5f93521b224faa868c3d9fd5a15835a971fdbb9e0ee9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.174.0/mo-0.174.0-aarch64-apple-darwin.tar.gz"
      sha256 "86fc08c931fedbda86ce2b9846a0ec476e5deb3b932e32be9b04f1f4759353eb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.174.0/mo-0.174.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0cee9b9f309aa3abd175480442bf5e066832970c63487dd4ae81565fc9499d5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.174.0/mo-0.174.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4ef44936aa8aae482062357b86cded0e170aeeb718a5601b5504a1bc2be8370"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
