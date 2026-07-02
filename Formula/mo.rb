class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.16.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c8ebe257dc4f8017f568f602f7cf90385fcfbf95ff94f70ab1b762ea4768598a"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a5c52201228c54cd54bb7d16a65ea8ea650741efd6677ff014fda57f995c2c8c"
  end

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
