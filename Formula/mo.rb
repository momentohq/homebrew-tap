class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.155.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "184f59d17c712e2e4fe9e5d7b68b4886686099393cf1d2dc107dee09a2ec0a4f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8ba7c6d8fe309f67031f97036caa89f64fed5c46b3c7555577582c191f51d40f"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.155.0/mo-0.155.0-x86_64-apple-darwin.tar.gz"
      sha256 "ec6442dd5b7996b4ef182a40932846520dad724eed727bd079f5201597d1f84b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.155.0/mo-0.155.0-aarch64-apple-darwin.tar.gz"
      sha256 "6892a0a17d01c07f8d7af5fdf50ee9157550cc977b4189e74ed426017f6aec99"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.155.0/mo-0.155.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "616c8b4e31323dcfd2a9113f1c955ae94307ece08bdeb659d8a928640db3ed1a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.155.0/mo-0.155.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75a62f92dd0aebb1deed3a34b18daf107daf2b5d4ec5cedfa49c1827860a0a44"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
