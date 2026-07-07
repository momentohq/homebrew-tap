class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.33.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "0bb091523b3218d8d0ea4108138566619cbd484544b596d63449d75bd7076b55"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3d29b6cc2453c5e8b06f7e62e9fb524ec356eaa513b18a0683a8948ff20e6a36"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.33.0/mo-0.33.0-x86_64-apple-darwin.tar.gz"
      sha256 "31b6468bfdfde359d3d6fc7d10ab2e64f0ddda9c2f64f9ec3d9618ea09ae09b6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.33.0/mo-0.33.0-aarch64-apple-darwin.tar.gz"
      sha256 "a002ab7b493e7046af520ad711e7575b662a22d3309bdbb3171ad7ab850f5614"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.33.0/mo-0.33.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "739c91486a79bec52a7b6637e58903990bba9d5d794e2e88be07f3833a950e23"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.33.0/mo-0.33.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d48f29eb9193714742074f76113c8a8c375f942c18d71f3e327c28d03b91149"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
