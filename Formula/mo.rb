class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.93.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "0c277a97d55d2df19bb18f1fda0f6d7455590b40da735f0aa73676e1a24e60c4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6d65e697a13d20f3d30c22322e208402420500264fc480f6ce4c4c54d428dd46"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.93.0/mo-0.93.0-x86_64-apple-darwin.tar.gz"
      sha256 "21d398cde70519407daa0d61f4a1ff71a6312cfdafa157c0c35a7ba3c6b4a2af"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.93.0/mo-0.93.0-aarch64-apple-darwin.tar.gz"
      sha256 "397363b9118e294902b05cf6f36c14f012d0298674afdf075c4c9a0b9f723be0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.93.0/mo-0.93.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b4a02e6b4fa37e4d708ac1689e2b134468aae677e65dd5828d7557e1dbbc4e2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.93.0/mo-0.93.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ffed324ef197f2375566c1b8ae3a5ac5543df89346d159e9ed6b1b6e3cd1fc6"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
