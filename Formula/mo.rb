class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.71.0/mo-0.71.0-x86_64-apple-darwin.tar.gz"
      sha256 "d8f1351faa57fd4a301d0a8711bc03131e42675e1c90b724fad5668c11acc761"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.71.0/mo-0.71.0-aarch64-apple-darwin.tar.gz"
      sha256 "ff4c96076911df9dbf583db99c5840e3e6deda16ba687484f5a99bf78ea3938f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.71.0/mo-0.71.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea8d07cbf4004affeca754b55b5e2659078d457199511d1b34ed33520569b31d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.71.0/mo-0.71.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e65cca55950315f58695c2f8e8d4e8b9b45821f373aa802f00b83bd8644f2c7"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
