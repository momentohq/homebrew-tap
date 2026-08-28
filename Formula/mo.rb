class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.128.0/mo-0.128.0-x86_64-apple-darwin.tar.gz"
      sha256 "2257331a10b756bc4905e48d9af5f7d0ba864b4d033ddd1353f9fd417824236f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.128.0/mo-0.128.0-aarch64-apple-darwin.tar.gz"
      sha256 "6cd98806f0a9f3ed6495cc07501034790f9177e268e3ebb5ad0b28a510edcca0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.128.0/mo-0.128.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0706e429daa9b4541369fa743898fffdf520e21decee19a0e1e64ecdf2ffec63"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.128.0/mo-0.128.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1282b12efa8c44d57032fb06ab921d771764a2cb81bb1aac7e567b02c3a8e4c7"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
