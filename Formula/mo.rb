class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.109.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "0b188971fc7128fad89f54d5a19932664a708fcb0a2874d83d59b72cd68f7c81"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0663b934365b94cdd7e537d6d6e41790290969b99a06af8d73eebd377b0afdd0"
  end

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
