class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.16.0/mo-0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "dc7815bde84a99fe14c774c834938083da7cd49da4446150954df08f9607033c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.16.0/mo-0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "6a8b2ec4f3e8566b6700258b91b596d4e64060ebec9571c7b03c836cdb994b11"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.16.0/mo-0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58300448c742e41ca0c111dc70956c6c3eaf06de000d39c7a5f660d058e39e6b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.16.0/mo-0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e0b37ad1d4ffeeec5326f16f33806993ce60e04e51467d1e31866891ef2b915c"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
