class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.82.0/mo-0.82.0-x86_64-apple-darwin.tar.gz"
      sha256 "a69691d7ab671549d775c1c5cb36def062a4e8f77629dfe401513f07042368f3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.82.0/mo-0.82.0-aarch64-apple-darwin.tar.gz"
      sha256 "98520e3435b27e321797346872298489909514772fcd6c312d04e045fb65dfeb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.82.0/mo-0.82.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48af43b6cc1d29e6c2781273547fca0f61b4ffe341d581267787ebd93bfd4ca7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.82.0/mo-0.82.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1122beeac5994a8c5261ae9c5ae2469e40cb25257b398662118f67d8c0c3fbbe"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
