class Ndir < Formula
  desc "Inline arrow-key directory navigation for your shell"
  homepage "https://github.com/tonegawa07/ndir"
  license "MIT"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tonegawa07/ndir/releases/download/v#{version}/ndir-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "84804de7f465d63f65b8e6483869ff8efc95255e9bcc5dd28f77408f1c11b206"
    else
      url "https://github.com/tonegawa07/ndir/releases/download/v#{version}/ndir-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/tonegawa07/ndir/releases/download/v#{version}/ndir-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "PLACEHOLDER"
  end

  def install
    bin.install "ndir"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ndir --version", 1)
  end
end
