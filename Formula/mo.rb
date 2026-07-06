class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.27.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "630a6c3bea80870a723e187c215fa10e34bacb937e3af3d72a2622b4d9a58b54"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "edce6e7171c6a4eea883338072a1446a7b5932a8e2bb7cb54135f451b868b3c5"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.27.1/mo-0.27.1-x86_64-apple-darwin.tar.gz"
      sha256 "43e95c25c39cec194f4b34b407583cfccf841175db12c7ea80b0042d75c7fb82"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.27.1/mo-0.27.1-aarch64-apple-darwin.tar.gz"
      sha256 "7fc98afd12089ae05ad6c332050fe2e8c1adc831b91919ce08673c344cf7b1fd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.27.1/mo-0.27.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b0404797879c4fb965e7bb6fd20cb52407ea4e2fac1dd972c22ef96b751a7e3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.27.1/mo-0.27.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f9f7711a6ed40d5a185c5489ada57ea08907bffcf5465ed3790c6ea7d479681b"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
