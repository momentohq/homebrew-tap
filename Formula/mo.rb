class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.26.2/mo-0.26.2-x86_64-apple-darwin.tar.gz"
      sha256 "62bafc88552b16d43ff68c001c2fa9c5a388e63f4e9ed6f4313d34916e36ae54"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.26.2/mo-0.26.2-aarch64-apple-darwin.tar.gz"
      sha256 "fda26963fdc59d075b50656352ed0650ea3a22e7967a0cba9df7a4d7c6fdd98f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.26.2/mo-0.26.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6f65f474b5e5ff478a29924a719e9e4a0f6af6efc579f40eec722c65ca72fedd"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.26.2/mo-0.26.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc9d52e41344d5cda39354c562c4c3996dd2446845501426468aa523a3ac02ff"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
