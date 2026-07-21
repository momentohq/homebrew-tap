class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.65.0/mo-0.65.0-x86_64-apple-darwin.tar.gz"
      sha256 "828bd49a7055e590abc37ee37de5282e0051599b425a51d54b422b87e17137d0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.65.0/mo-0.65.0-aarch64-apple-darwin.tar.gz"
      sha256 "41465e6dc624240a740fd1b6352267093285013ee4b95bd48f2448b47bc36eb2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.65.0/mo-0.65.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "acbe2a8eab5e0031a9caacbdff6d68cd9df546fd6520f54e45b3ede18c86b139"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.65.0/mo-0.65.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f613346128e0216a93335f488f4d332d6611789ef2f5928f46bc9c0e2594abda"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
