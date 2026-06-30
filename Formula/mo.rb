class Mo < Formula
  desc "mo"
  version "0.11.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.11.1/mo-0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "f9c2065abb46e0536a56dfba9912a9fe2b4ce93c712c8b735ed222b1ad819c90"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.11.1/mo-0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "20dc4161c3a84b75fec13bbe901fb88129f8ca01600a458f4aad077d20065c36"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.11.1/mo-0.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "76d8088cebb726ee2e3882f428eba0c79e1626ac88d467004b58a61501505deb"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
