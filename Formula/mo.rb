class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/mo-0.74.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "5bb540fb8b319fe6395bcbb1a84a7efb85052f2f50bd64bf837b3b517641d048"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "27646e7e242997d236fb1751a781a762ca447c468053b7a50046bd8e29e2d022"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.74.0/mo-0.74.0-x86_64-apple-darwin.tar.gz"
      sha256 "1f8af7c7e50b979cf093d136d1467702a1084ead4eb13b22142870ba79247ada"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.74.0/mo-0.74.0-aarch64-apple-darwin.tar.gz"
      sha256 "7dae0f3b634b00ec97b8f474308ac949731f8d3cf920ba897027330e866db622"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.74.0/mo-0.74.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a934961588ff3ace5eb2d8720406cb3cd67439ea2429c204960eeda66499f46"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.74.0/mo-0.74.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4f18a67e0633ba7603769c89203cfc7321ccaeb0bec09cfb43514f4d97ba0f81"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match(/^mo \d+\.\d+\.\d+/, shell_output("#{bin}/mo --version"))
  end
end
