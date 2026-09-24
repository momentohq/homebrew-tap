class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.143.0/mo-0.143.0-x86_64-apple-darwin.tar.gz"
      sha256 "1acafcc9643aecae3a1179592e1fa93444cc5231bf2d9829f586fff581b0990e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.143.0/mo-0.143.0-aarch64-apple-darwin.tar.gz"
      sha256 "e1b991c36169389be6f06bfc6d3b4a9db16a89bd6729c24a96a07ed4e6a3e95f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.143.0/mo-0.143.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e48bd03bc18d3f5546d1ef7e7094b6e173b46837d94538a7addece9849b161d1"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.143.0/mo-0.143.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d48e55c1089cf0dba94cdbb7868cc3ca0efe1d3e09b4d220be7d31ce0004da83"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
