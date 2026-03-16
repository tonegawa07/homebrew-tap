class Ndir < Formula
  desc "Inline arrow-key directory navigation for your shell"
  homepage "https://github.com/tonegawa07/ndir"
  license "MIT"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tonegawa07/ndir/releases/download/v#{version}/ndir-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "cfa3e31fbd4f1bf9acce908aa12a7d29d010fb3fad9cecab553ffde9b3672687"
    else
      url "https://github.com/tonegawa07/ndir/releases/download/v#{version}/ndir-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3f931885e071ada01b1c6567651716927cb8b38fbbf67ff4afd763b8ef8a3bdc"
    end
  end

  on_linux do
    url "https://github.com/tonegawa07/ndir/releases/download/v#{version}/ndir-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1010360b95c4e87173d504923f5b79de9bb05a09e95d0f715a7c46148fe210dc"
  end

  def install
    bin.install "ndir"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ndir --version", 1)
  end
end
