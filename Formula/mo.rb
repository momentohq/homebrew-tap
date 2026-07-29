class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.85.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "2192d7f33f03d189a255748f2aed2cda3c85a222557bbeebd9a3399e955d175b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ff8a99809252ddfe3c121c78cf003fc6e3afae34891a904220fc43357ff03419"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.85.0/mo-0.85.0-x86_64-apple-darwin.tar.gz"
      sha256 "ac556551698e91e35d532d6bc25e30b7ae3963f66db88f0633329dc40076abca"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.85.0/mo-0.85.0-aarch64-apple-darwin.tar.gz"
      sha256 "472989a76fcced328560548a6546a005680f536bd61583fd241ec81f6d651228"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.85.0/mo-0.85.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b0a9a68c93378ae588b96e59654ed072d78be1678a373df78cc9f9abfe69cb8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.85.0/mo-0.85.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "81441b437df25de03f991f86ed60dc8a33ccedbd002dc846dc3be7c28cc7ac1e"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
