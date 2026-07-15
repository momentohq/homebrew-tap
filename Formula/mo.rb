class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.48.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "dc888b3587a46f55a69bc195f61d6b4efcabda94c1ae92f8e6af8b08bb0c7737"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "efb0fb591c46a52afb28efcd5711bc617da0ad27e0784dde96e49deff8ec9954"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.48.0/mo-0.48.0-x86_64-apple-darwin.tar.gz"
      sha256 "457566a174fe63c5f0c351a9ea97902852ad6e82eb7def5f3cef515b3aa0c3d6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.48.0/mo-0.48.0-aarch64-apple-darwin.tar.gz"
      sha256 "5fbcd63458d590609430aa71357cba7348ee342b9f118d71e8b8d1a0a08f2ac1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.48.0/mo-0.48.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43b5b1f2130eaa2ec26fa11f6f4dec1ddcfa7132d107603bee243bca54812a61"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.48.0/mo-0.48.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5598cca9c4a845b4ed677bfaf9f032f5bde97e361a4d98d00e014f067f643687"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
