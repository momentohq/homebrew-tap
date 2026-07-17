class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.54.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "b2b520b6e7c6601da1cdf5b3169445b65587ac97a56d4125cf5f153d81ffeca6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "afdb7446ef75a7002fe0b23b1f63cb2f17eb7b1ea344de612230de013d8370b9"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.54.0/mo-0.54.0-x86_64-apple-darwin.tar.gz"
      sha256 "848fa91c3be39b0c71dd3f26eb3465ae737f39293481905b2ca21407ac9a158c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.54.0/mo-0.54.0-aarch64-apple-darwin.tar.gz"
      sha256 "a307bd8674e1c2ce935afee4acfb33ae5e1285739e1e5989e571a14ff732e181"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.54.0/mo-0.54.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f92ef83c38f2bbe0f8ba818c4d336adccd9f7ac1542faf99d4b41e14e108228f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.54.0/mo-0.54.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2710bbbcb2e440539667a82b38689a83e5ffc246b05b62d7e75a056d8d5ed403"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
