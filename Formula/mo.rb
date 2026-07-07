class Mo < Formula
  desc "Command-line client"
  homepage "https://www.gomomento.com"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.32.0/mo-0.32.0-x86_64-apple-darwin.tar.gz"
      sha256 "a37c0fc7cf8ddc54e2738f83b5922cc5d857548e47a178dd0b56fe806353b9a8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.32.0/mo-0.32.0-aarch64-apple-darwin.tar.gz"
      sha256 "b6eeb943321294b12d01b786e790af55099bb6093005735540efb2c4d5f0fb14"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.32.0/mo-0.32.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce26d8435a0734a6a8dbffceefdda05fea1a9f91b09f4b412b11b2c1375ec2cc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/homebrew-tap/releases/download/mo-src-0.32.0/mo-0.32.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "97dc31cecad0246713807db152e5b030fdaf00d617c4588dc51947f2f03a98d2"
    end
  end

  def install
    bin.install "mo"
  end

  test do
    assert_match "mo", shell_output("#{bin}/mo --version")
  end
end
