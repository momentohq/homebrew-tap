class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.129.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "1f741d72979efeecdd9e8c2c9b64a0fc37cfb1f0bc35e50b83c8ef1a4b24b8ba"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7d7c6f78ab5740a157d80441f5ac02009da9b1c655f90eba20c729a0a08c9e76"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.129.0/mo-0.129.0-x86_64-apple-darwin.tar.gz"
      sha256 "49e286c2a4f8db316165c44aa8854ba74197a94899c401139b987c7cbbd319a0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.129.0/mo-0.129.0-aarch64-apple-darwin.tar.gz"
      sha256 "17d65f63549876037f1091889655680e5168ecb555be938673f94d195294a04a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.129.0/mo-0.129.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8b18bcf8e567a647af781af2fd53671855c23075379f7934fa07f962d5620fb"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.129.0/mo-0.129.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3d4ff6e65451018844e0eb6ec8a51d28780ee7f2e9b67d245a711f2cce48a8d0"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
