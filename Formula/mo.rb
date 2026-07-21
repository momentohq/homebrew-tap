class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.66.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "673a9c765b086e769f61aaa8ef43b1a9f7fc01e99bbf10bade9780688aab2fc8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "48af589ae25ee184553f844f856fe06dacf50b88aaebd53e1069ee914eb96820"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.66.0/mo-0.66.0-x86_64-apple-darwin.tar.gz"
      sha256 "a76df2b86d34916a03b773e332b2a32922859a65da2795a273be78d6417ba2a0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.66.0/mo-0.66.0-aarch64-apple-darwin.tar.gz"
      sha256 "45058f0f793ed78438442162808825d7ddb87f669b414d4fab7f1d65ac9d4860"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.66.0/mo-0.66.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e358ca22ce11eb249b64279ac71c5f18460938d078010a340c9285944cf6bb0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.66.0/mo-0.66.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "729e44eba62ca62a0f6901c50272830ee8fe44880c4c9903c44945664fcca6d3"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
