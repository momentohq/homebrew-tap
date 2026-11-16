class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.189.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "b448267633079bf758f33dcd0773b6310f158c8721241de8e45cef68e708041d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "189e426c7491ff1b9415092e221dc1f8cc6c2666c5c2e923eed51c9ef0bc4584"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.189.0/mo-0.189.0-x86_64-apple-darwin.tar.gz"
      sha256 "38925e40df8a073a9dfa2b00eff3f9bdca4d35c702f93ec0dd1d973b9094b581"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.189.0/mo-0.189.0-aarch64-apple-darwin.tar.gz"
      sha256 "a723deaffd321f355c73bade977a50fda043a36e4557e5c1021e975057d0791c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.189.0/mo-0.189.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08815c379e1dbb3c702006ce36099c538c4e139349c1ac6a0a6f3392188d24d6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.189.0/mo-0.189.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f1711df8426189ca0a135e68471f8559234e497ae92fc26a22bc2c24a5e82d22"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
