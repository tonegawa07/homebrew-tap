class Ndir < Formula
  desc "Inline arrow-key directory navigation for your shell"
  homepage "https://github.com/tonegawa07/ndir"
  license "MIT"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tonegawa07/ndir/releases/download/v#{version}/ndir-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0b45650665a4bc52002662a4e82fdd2d56aaa878e8cd5f57abeb532575259cff"
    else
      url "https://github.com/tonegawa07/ndir/releases/download/v#{version}/ndir-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "fadf16b9c2d153815a398cbfc139bbf84bd36bb04247dc4a6406f9c3579e3f22"
    end
  end

  on_linux do
    url "https://github.com/tonegawa07/ndir/releases/download/v#{version}/ndir-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fd876dcb37f1d30390210346ca87e4c9a216f0c26c907ce24d5c2afecf85de70"
  end

  def install
    bin.install "ndir"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ndir --version")
  end
end
