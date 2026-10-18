class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.162.0/mo-0.162.0-x86_64-apple-darwin.tar.gz"
      sha256 "fb21742c881412c4ff49b0162c6f516cda01b3da2b0a5f011b6e9845cd71cf59"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.162.0/mo-0.162.0-aarch64-apple-darwin.tar.gz"
      sha256 "7cc350c9ffe5a5e8549fa77166ae80801dc9ade18650ad929cecbb78879b1e3f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.162.0/mo-0.162.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "993f377ea1271e79521fe4f0578aef264fb740156a7540ca0b2e0f82a3ab969f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.162.0/mo-0.162.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "165e30e1095aa94379a693fb48edaf4ef6959351589d42739b98ea5e89a014fc"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
