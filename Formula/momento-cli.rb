class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.50.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.50.0/momento-cli-0.50.0.x86_64-apple-darwin.tar.gz"
      sha256 "3356dca5b51c0b4f6036cc7a74d6da17df688ccd4770e1478120068fc76b73d2"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.50.0/momento-cli-0.50.0.aarch64-apple-darwin.tar.gz"
      sha256 "4cd29ce8a58f8cae86f54eaca81adc32fda6b56abf8ba56bcc3ef032ff1097d9"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.50.0/momento-cli-0.50.0.linux_x86_64.tar.gz"
      sha256 "9872d5a975d6443e94636e4f41548d725619bfad0cc961c1cb6bc1b877c89dd2"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.50.0/momento-cli-0.50.0.linux_aarch64.tar.gz"
      sha256 "7288305693ca92133f3f9e1a014071055ba6afafee7698944ba66f98caef3116"

      define_method(:install) do
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
