class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.56.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "e47858eb712009d0b97cf210dd0aa6603c5b19acef03dd740c2e078fc51ab112"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3ad749eabc9055352c9a59fb00ccda301d64fb3351a1ae92fe52c8635bd9e765"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.56.0/mo-0.56.0-x86_64-apple-darwin.tar.gz"
      sha256 "0364abe80ff33a050c7feb3b28c555913970c0be1c03a1f2f3c95991acbb7d7b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.56.0/mo-0.56.0-aarch64-apple-darwin.tar.gz"
      sha256 "7f6af2eaf8486f6590c80ea14e985eb3d899deecbc40b6b16fd11b8d86945990"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.56.0/mo-0.56.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e3a38baef676fc2bb77bb603466ba94815d7c6e6f8df12f31e975d8b9c40ba64"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.56.0/mo-0.56.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "959035d24f6916fc26f0889132408160a36586c40bc6be516fd3bfd1bcf903bc"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
