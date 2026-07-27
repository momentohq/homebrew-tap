class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.81.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "05fd2e728218172ec830459617549371f26145741789f98134f43b4b4f664543"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ee000ade2deb2eb429aba50106e7a32fa1b671d89ce23b2e5a889ebb58354328"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.81.0/mo-0.81.0-x86_64-apple-darwin.tar.gz"
      sha256 "628eff6a1076a7eb6b9590a65706687d65fc7084848b2baa84d84a3b2bb897ca"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.81.0/mo-0.81.0-aarch64-apple-darwin.tar.gz"
      sha256 "8649f4799704c0b66466e73daef7113c2018cbb573352a8013b49051dc311fef"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.81.0/mo-0.81.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3019f8809156557fd5589304e027902096668ec65fa4dbdfcd8469ca793e71e2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.81.0/mo-0.81.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "82107ac9c814e8423ea5865406bac49b0f58c35b30ade19dd9cb755d46a5f928"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
