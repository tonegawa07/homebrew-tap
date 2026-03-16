class Ndir < Formula
  desc "Inline arrow-key directory navigation for your shell"
  homepage "https://github.com/tonegawa07/ndir"
  license "MIT"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tonegawa07/ndir/releases/download/v#{version}/ndir-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7dc08f8651fd0bb064917bc036a73ebb6491ef3065c017a93aa8ba29471bb502"
    else
      url "https://github.com/tonegawa07/ndir/releases/download/v#{version}/ndir-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "239c7a7dc94fa55de5b6642e662cf3ed903c45f864149eb135a5f8b82e8a6ff3"
    end
  end

  on_linux do
    url "https://github.com/tonegawa07/ndir/releases/download/v#{version}/ndir-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bd0c3e51ff32eb9a79e7cb18098cc3e29b5ce959b03514177e15f6f29653138e"
  end

  def install
    bin.install "ndir"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ndir --version", 1)
  end
end
