class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.59.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "738718dbb7643d17e7f6e2be7759c3d9814cd59548c0c93862eb7feb41b07a1f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e83ec8c8c44e64a228042c5d0098633db0e1d12a3998f5ab115780b088d8cb07"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.59.0/mo-0.59.0-x86_64-apple-darwin.tar.gz"
      sha256 "c3d7e86f20729c3d9f5415457290166c3e20551f3acf6d0de4db06f4f563f697"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.59.0/mo-0.59.0-aarch64-apple-darwin.tar.gz"
      sha256 "a19b6aeac436dc5decf5d0f9c22a4526258cf6da572b8e89a028e7271773372b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.59.0/mo-0.59.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8513ab294ca62ade71fd8975adc7de43c830411d700d4b9d6a687dce00127b6d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.59.0/mo-0.59.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "985264931a8f4021fd23c2605cc69d26ab28bcb992fb060082998ed5445269d6"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
