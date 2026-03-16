class Githop < Formula
  desc "A lightweight TUI for quick git branch operations"
  homepage "https://github.com/tonegawa07/githop"
  license "MIT"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tonegawa07/githop/releases/download/v#{version}/githop-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "88b815f8151c7e3c04ac468be53498fb03b3a8458f46303a521f404fe56d09a5"
    else
      url "https://github.com/tonegawa07/githop/releases/download/v#{version}/githop-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d5ff7ffd60afc9259e2e87384616850e1cf6a21b196dee1d8827623d532a9577"
    end
  end

  on_linux do
    url "https://github.com/tonegawa07/githop/releases/download/v#{version}/githop-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9b21f8245aa9c40ff301791c1f665e04417800e2d44c22733aa578e15c766d01"
  end

  def install
    bin.install "githop"
  end

  test do
    assert_match "Not a git repository", shell_output("#{bin}/githop 2>&1", 1)
  end
end
