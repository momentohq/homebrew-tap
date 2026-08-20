class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.111.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "5a38a84feeea27d2bf2c6c2b642b8d6869fb4b88c1401f013b93a4899bdf4994"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d42871c15bfdd76b0a8043856dbed79ea5e24538c44789bedcb9ee4a7580d955"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.111.0/mo-0.111.0-x86_64-apple-darwin.tar.gz"
      sha256 "5b52bcb7bd8b620aaecb19aed8faacc2a9ff220e4340304249b335cbd818c3e2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.111.0/mo-0.111.0-aarch64-apple-darwin.tar.gz"
      sha256 "a49c6f647562750b43e586829fb31689b05981a73d7c18e5171e99d6a6ce43b1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.111.0/mo-0.111.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "decdad46f28fd7c66bac0bda0e376bdee5ec829069d8188a142b94b6713063b8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.111.0/mo-0.111.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3bfef31a4905512318214e0f6336d0575b967d8af9940fd0a463b30c1ad28fd9"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
