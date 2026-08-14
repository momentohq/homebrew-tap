class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.103.0/mo-0.103.0-x86_64-apple-darwin.tar.gz"
      sha256 "a559d3b4f51af3f335fe9dd2dd49986abd51c99a4b6834082e152974497cd937"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.103.0/mo-0.103.0-aarch64-apple-darwin.tar.gz"
      sha256 "878bfbb84c0f66fd8f2f7da91264078d6bcbdfac9fb3879e68ee6851fb26ee67"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.103.0/mo-0.103.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "356c61ca042360498fd1a48b2e889399832482c738d2e9a0323acf59e0965951"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.103.0/mo-0.103.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19afa35dd4fa3aabccb54d086efd84ebd1a475de5df457c85d1aa0dc2ec88408"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
