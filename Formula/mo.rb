class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.121.0/mo-0.121.0-x86_64-apple-darwin.tar.gz"
      sha256 "ac718ca17af845f2d585e774f0e809cb171589946c4248881992b104e42847c1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.121.0/mo-0.121.0-aarch64-apple-darwin.tar.gz"
      sha256 "a2134ae281c09fab91df23437e17d8fdb7e456461b9f93376e8a81f283bbd02e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.121.0/mo-0.121.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3266e930b74a066aa25647f45a488dde2815841dc53c29a01beb29501c52e9e7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.121.0/mo-0.121.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "179879c72e9083b01c291165eb5a065d33d48eca3b31005a9d7c93b76794cac5"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
