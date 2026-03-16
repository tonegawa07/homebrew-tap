class Ndir < Formula
  desc "Inline arrow-key directory navigation for your shell"
  homepage "https://github.com/tonegawa07/ndir"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tonegawa07/ndir/releases/download/v#{version}/ndir-v#{version}-aarch64-apple-darwin.tar.gz"
    else
      url "https://github.com/tonegawa07/ndir/releases/download/v#{version}/ndir-v#{version}-x86_64-apple-darwin.tar.gz"
    end
  end

  on_linux do
    url "https://github.com/tonegawa07/ndir/releases/download/v#{version}/ndir-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
  end

  def install
    bin.install "ndir"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ndir --version", 1)
  end
end
