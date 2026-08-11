class Mo < Formula
  desc "Command-line client"
  homepage "https://gomomento.ai"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.98.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "729630693690937d215081c382a8ca41f073c14ac021a3d83f5853f93d149733"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "70907acd6f6cc741fbf5e4345c7c8aeddf4a1cb08a06ffd4f9619a94cf9fe197"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.98.0/mo-0.98.0-x86_64-apple-darwin.tar.gz"
      sha256 "9f278b4b1046047838d2b845b3b427cc9b4c9c4ca10669422fb71e2ff93772af"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.98.0/mo-0.98.0-aarch64-apple-darwin.tar.gz"
      sha256 "0b1c4f7064161f085cb03655bb151026fbe89a63bcea62a3c8a2dd9a47db8a71"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.98.0/mo-0.98.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ffd578e5babd6f82ddc39bb76058270f6832098a46db6fdece9636425d7b88f5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.98.0/mo-0.98.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d4b3ad6d04b9400594f84382e6a7622620044017b5f6054d489aede4501a25a5"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
