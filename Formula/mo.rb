class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.58.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "be6974351c66cc86a83c43bc9e54fdf306c2381ac7cf82619ddb597559326bb4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e3cda960512a216a9aa92637aee79c5b0583f0a6abc1450e949bc1a092943bcb"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.58.0/mo-0.58.0-x86_64-apple-darwin.tar.gz"
      sha256 "14fc8a5dcc168051ddf8e121308f66843eb6f21893711c941eae312effbc84a6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.58.0/mo-0.58.0-aarch64-apple-darwin.tar.gz"
      sha256 "19765dad9a1afc342552d243b57e2518285de112d47695f09b11bf8a9feaf03e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.58.0/mo-0.58.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ec59fac048b240252c2a854ce97ce9fd8cd9f2166a2e913e063130084b6c931"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.58.0/mo-0.58.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "58f7568b250655a090b44769ef828793337d8048879ffedce7faf805fd2af9a0"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
