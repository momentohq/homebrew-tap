class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.151.1/mo-0.151.1-x86_64-apple-darwin.tar.gz"
      sha256 "5122bf4f967bc53fe9ee45a56d896013f3db6d16fcad5b98411ca49210003064"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.151.1/mo-0.151.1-aarch64-apple-darwin.tar.gz"
      sha256 "574f123d2b451d3937e4e7f54728105cecdf530c50d1a94830da8a304655a808"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.151.1/mo-0.151.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "649afaf73063127dceb36905cc52d3317a034f53c46e32de24d9af42c4a29428"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.151.1/mo-0.151.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "24ae7bb7d98e8c69c7e90cae493450a015e29b86c9660b019db038c4b7236b39"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
