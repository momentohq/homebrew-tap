class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.109.0/mo-0.109.0-x86_64-apple-darwin.tar.gz"
      sha256 "a245b268acd57acd9b5022b6708bf5a3afd8d9aa2d423df26f5cc21bf1422822"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.109.0/mo-0.109.0-aarch64-apple-darwin.tar.gz"
      sha256 "35c7833c5fbd364305fbb4eeb0109e86441ea30406bc91ab81c6d835ea602413"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.109.0/mo-0.109.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bbd03560aaf0eacf451cea0bf23391931463fa641eaa7c6305573b24830e2123"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.109.0/mo-0.109.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f98c953d6401c981bd4da544c2d58edde25fe69fc11f91a066a21c41de96de4"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
