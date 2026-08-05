class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.95.0/mo-0.95.0-x86_64-apple-darwin.tar.gz"
      sha256 "cd928416d81fb083bd9f4c2f2b645527e17c292c093f26a36c2d049984bafe66"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.95.0/mo-0.95.0-aarch64-apple-darwin.tar.gz"
      sha256 "a22de7cb44ca50dc6122a038e9d51add2cde4880d87d985db006a64d888b9ec4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.95.0/mo-0.95.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a359d9e3d290b80d4bbf1a22b6c8a6b9e6782a7dc25c4577ab568a71276af15"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.95.0/mo-0.95.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cd1cb9fc4e5e489065287aae5faac1f820376afb80e0cb447624daecfb17e039"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
