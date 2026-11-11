class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.179.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "2a3e1856aed54710cd7f03985ebd4f71b282052ee0f0212cbfd76b994a488437"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6b843d98b4ae42f7f1623a57c8ad009d12f244bda135f57ff372ee27c50d5db6"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.179.0/mo-0.179.0-x86_64-apple-darwin.tar.gz"
      sha256 "06b23649f214d474f0f21c69f7000e653ee4694ea417f77e625717c48097b8dd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.179.0/mo-0.179.0-aarch64-apple-darwin.tar.gz"
      sha256 "3bac273c4c89ed182732ec9ce46524df1189b965282f65301a01b7479ebc4cd3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.179.0/mo-0.179.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "efd8689aef51d37357310b40f5c69482a37bb1200a7035f26a13274588982d37"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.179.0/mo-0.179.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cffdf1b8f48ad3c7cac48b996c4e7b94abf122407e8713e5a4b8735f9210c958"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
