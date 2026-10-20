class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.166.0/mo-0.166.0-x86_64-apple-darwin.tar.gz"
      sha256 "6aefec42bda09159e857588d3374aeede7eb3e0af760b8ae848e65f87abb1566"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.166.0/mo-0.166.0-aarch64-apple-darwin.tar.gz"
      sha256 "61b216d71b7f26aa4bf848a3606784ca9993fdc3a4f74ccc623adb7de6e2ec6a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.166.0/mo-0.166.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c69cbb40cc73e0eeda84d1925f5ff5795ea02d32a3d2d3f9f03153e8b9b7737"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.166.0/mo-0.166.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18eecb2b16daf49b671813096ef3730529e28868aa3248bda4f484bd65ec66a6"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
