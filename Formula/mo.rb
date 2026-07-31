class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.87.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "1316b9c2475ebe3693d0e78ef0cbf426ce00ec9b07ec179e9c1a4338ec16b8e3"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c5f6e946440298e8e3a2ba9eb187ebb03103d001d7c5355569657e990455dc1d"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.87.0/mo-0.87.0-x86_64-apple-darwin.tar.gz"
      sha256 "5db628b7b692b16666aaf165b43ad17da24f93cd52a292e952bf2796265831eb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.87.0/mo-0.87.0-aarch64-apple-darwin.tar.gz"
      sha256 "384b6b98eccc4458bb82cd664107055f903af2d6da68fa3a791cc91e91ed1003"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.87.0/mo-0.87.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e64e4f862674fc96dda308539c7b028dae81f0fc443b5d0f3786ae889a5162b9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.87.0/mo-0.87.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ca81fda0af2838fbac8af5bcf9f1614665ee5c9a61a49c80cf280157e44535f8"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
