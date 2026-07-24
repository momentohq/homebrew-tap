class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.73.0/mo-0.73.0-x86_64-apple-darwin.tar.gz"
      sha256 "23ad56de8c25cccedfba977155018d8ed9580f359ec25037c4c174deccf95ed5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.73.0/mo-0.73.0-aarch64-apple-darwin.tar.gz"
      sha256 "a60c81212d1fa33948a7ed7860057b36368a4a54ae8d73ecf75cac98e5720824"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.73.0/mo-0.73.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee522e98fbf618e3db34599e84c0949b8638a86acc9e9380ff9b37cfc0ad2be3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.73.0/mo-0.73.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "472ada31fe58b7eced1f3a810e4639551b3bf35e4c7b72b028192a8e09528dcc"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
