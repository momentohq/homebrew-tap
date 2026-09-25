class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.148.0/mo-0.148.0-x86_64-apple-darwin.tar.gz"
      sha256 "8dd42f3ce115d1c0359a044dd48f798eb6d754555967b8a4fe49a88103f38e97"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.148.0/mo-0.148.0-aarch64-apple-darwin.tar.gz"
      sha256 "9cb96a0d6df341ae7a760c7b52a62aee1bcc064673ee2ff9d1cbcf17e4a95e7c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.148.0/mo-0.148.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b80c01e15aad1037832a874185764aebcc83adbb3574c6dfbd953c9169c16572"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.148.0/mo-0.148.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3252364f25cf76c9770278ab3dff7b1a354441503731276ec9520d43c1fa73f0"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
